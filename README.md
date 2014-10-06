My blog theme for [Hexo](http://hexo.io) using [Jade](http://jade-lang.com) and
[Stylus](http://learnboost.github.io/stylus).

Initially derived from
[jade-barebone](http://widatama.github.io/hexo-jade-barebone). Thank you Danu
Widatama to give me a nice example to work with!


## Installation

To use this theme, install the needed renderers first:

```shell
cd $hexoDir
npm install hexo-renderer-jade --save
npm install hexo-renderer-less --save
```

Clone this repository to your Hexo themes folder and modify `theme` in
`_config.yml` to `koehr`.

```shell
cd $hexoDir
git clone git://github.com/nkoehring/hexo-theme.git themes/koehr
```

## Configuration

You can configure some of the themes behaviours in `themes/koehr/_config.yml`.

For now this is just the main menu. I will probably add stuff like analytics
and [AddThis](https://www.addthis.com) in the future.
