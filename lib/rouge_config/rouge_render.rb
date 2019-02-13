require 'redcarpet'
require 'rouge'
require 'rouge/plugins/redcarpet'

module RougeConfig
  class RougeRender < Redcarpet::Render::HTML
    include Rouge::Plugins::Redcarpet

    def header(text, level)
        level += 1
        "<h#{level}>#{text}</h#{level}>"
    end

    def block_code(code, language)

      # --- Extract file name ---------------------- #
      x = ''
      regx = Regexp.new(/(<!--\s?x:(\s?.{1,}\s?)-->\n?)/)
      if !(code =~ regx).nil?
        code.match(regx)
        x = $2.try(:strip) || ''
        code.gsub!(regx, '')
      end
      # -------------------------------------------- #

      lexer = Rouge::Lexer.find_fancy(language, code) || Rouge::Lexers::PlainText
      if lexer.tag == 'make'
        code.gsub! /^    /, "\t"
      end
      formatter = rouge_formatter(lexer)
      result = formatter.format(lexer.lex(code))

      return result if language.blank? && x.blank?

      # --- Compose language and x section --- #

      info_inner_html = [x, language].select(&:present?).map.with_index { |text, i|
        i == 0 ? "<span>#{text}</span>" : nil
      }.compact.join('')

      %(<div class='filepath'>
          #{info_inner_html}
        </div>
        #{result}
      )
      # -------------------------------------------- #
    end
  end
end
