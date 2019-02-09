module MarkdownHelper
    def markdown(text)
      options = {
        filter_html:         true,
        hard_wrap:           true,
        space_after_headers: true,
        with_toc_data:       true,
        fenced_code_blocks:  true
      }

      extensions = {
        autolink:                     true,
        no_intra_emphasis:            true,
        fenced_code_blocks:           true,
        tables:                       true,
        footnotes:                    true,
        strikethrough:                true,
        lax_html_blocks:              true,
        quote:                        true,
        disable_indented_code_blocks: true,
        no_intra_emphasis:            true
      }

      renderer = Redcarpet::Render::HTML.new(options)
      renderer = Redcarpet::Render::OriginalHTML.new
      renderer = RougeConfig::RougeRender.new(options)
      markdown = Redcarpet::Markdown.new(renderer, extensions)
      markdown.render(text).html_safe
    end

  end
