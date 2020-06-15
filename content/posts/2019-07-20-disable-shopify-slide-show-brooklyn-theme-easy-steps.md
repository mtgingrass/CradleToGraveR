---
title: Disable Shopify Slide Show Brooklyn Theme Easy Steps
author: mtgingrass
type: post
date: 2019-07-20T19:22:25+00:00
url: /2019/07/20/disable-shopify-slide-show-brooklyn-theme-easy-steps/
classic-editor-remember:
  - classic-editor
tap_disable_autolinker:
  - no
tap_autolink_inside_heading:
  - global
tap_autolink_random_placement:
  - global
categories:
  - Computer Tips

---
## How to remove or disable slide show in Brooklyn theme:

Today, I will show you how to disable the slide show in Brooklyn theme of your Shopify website.

1. First of all, go to **admin page** and click on **Customize theme tab** on the left side and then click on **Customize theme button**

<img class="alignnone size-full wp-image-663" src="http://markgingrass.com/wp-content/uploads/2019/07/Shopify.png" alt="" width="884" height="396" srcset="https://markgingrass.com/wp-content/uploads/2019/07/Shopify.png 884w, https://markgingrass.com/wp-content/uploads/2019/07/Shopify-300x134.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/Shopify-768x344.png 768w" sizes="(max-width: 884px) 100vw, 884px" />

&nbsp;

2. Now, the themes page will open. Click on **Customize** button.

<img class="alignnone size-full wp-image-664" src="http://markgingrass.com/wp-content/uploads/2019/07/Shopify2.png" alt="" width="911" height="444" srcset="https://markgingrass.com/wp-content/uploads/2019/07/Shopify2.png 911w, https://markgingrass.com/wp-content/uploads/2019/07/Shopify2-300x146.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/Shopify2-768x374.png 768w" sizes="(max-width: 911px) 100vw, 911px" />

&nbsp;

3.  In the left panel, right at the bottom is **Theme actions**. Click on **Theme actions** button and select **Edit code** option.

<img class="alignnone size-full wp-image-665" src="http://markgingrass.com/wp-content/uploads/2019/07/Shopify3.png" alt="" width="911" height="453" srcset="https://markgingrass.com/wp-content/uploads/2019/07/Shopify3.png 911w, https://markgingrass.com/wp-content/uploads/2019/07/Shopify3-300x149.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/Shopify3-768x382.png 768w" sizes="(max-width: 911px) 100vw, 911px" />

&nbsp;

4 A coding page will open. In the search box, type **slideshow.liquid** and click it.

<img class="alignnone size-full wp-image-666" src="http://markgingrass.com/wp-content/uploads/2019/07/Shopify4.png" alt="" width="908" height="421" srcset="https://markgingrass.com/wp-content/uploads/2019/07/Shopify4.png 908w, https://markgingrass.com/wp-content/uploads/2019/07/Shopify4-300x139.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/Shopify4-768x356.png 768w" sizes="(max-width: 908px) 100vw, 908px" />

&nbsp;

5 Find **<div data-section-id=&#8221;{{ section.id }}&#8221;** in the coding page. It will be near line 38.  Add **{% comment %}** before <div data-section-id=&#8221;{{section.id}}&#8221;.

<img class="alignnone size-full wp-image-667" src="http://markgingrass.com/wp-content/uploads/2019/07/Shopify5.png" alt="" width="909" height="291" srcset="https://markgingrass.com/wp-content/uploads/2019/07/Shopify5.png 909w, https://markgingrass.com/wp-content/uploads/2019/07/Shopify5-300x96.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/Shopify5-768x246.png 768w" sizes="(max-width: 909px) 100vw, 909px" />

&nbsp;

6 Now, find the ending **</div>**. It will be near line 211. Add **{% endcomment %}** after </div> and Click on **Save** Button.

<img class="alignnone size-full wp-image-668" src="http://markgingrass.com/wp-content/uploads/2019/07/Shopify6.png" alt="" width="913" height="326" srcset="https://markgingrass.com/wp-content/uploads/2019/07/Shopify6.png 913w, https://markgingrass.com/wp-content/uploads/2019/07/Shopify6-300x107.png 300w, https://markgingrass.com/wp-content/uploads/2019/07/Shopify6-768x274.png 768w" sizes="(max-width: 913px) 100vw, 913px" />

&nbsp;

Now, when you refresh the chrome tab, you will find that the slide show is removed.

You can watch all these steps in the video below

<iframe title="Disable Shopify Slide Show Brooklyn Theme Easy Steps" width="1200" height="675" src="https://www.youtube.com/embed/1M90QwkSUig?feature=oembed" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>