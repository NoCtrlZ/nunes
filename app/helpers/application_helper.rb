module ApplicationHelper
    def default_meta_tags
        {
          site: 'TechDeeper',
          title: 'プログラミングネイティブのメディア',
          reverse: true,
          charset: 'utf-8',
          description: 'description',
          keywords: 'キーワード',
          canonical: request.original_url,
          separator: '|',
          icon: [
            { href: image_url('favicon.ico') },
            { href: image_url('icon.jpg'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
          ],
          og: {
            site_name: 'TechDeeper',
            title: 'プログラミングネイティブのメディア',
            description: 'TechDeeperはプログラミングネイティブ世代に先立ち、技術格差の解消やスムーズな開発環境の構築を目指したメディアです。',
            type: 'website',
            url: request.original_url,
            image: image_url('ogp.png'),
            locale: 'ja_JP',
          }
        #   twitter: {
        #     card: 'summary',
        #     site: '@ツイッターのアカウント名',
        #   }
        }
      end
end
