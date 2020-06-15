---
title: How to Disable Bouncing Icons in the MAC Dock
author: mtgingrass
type: post
date: 2019-07-18T13:27:01+00:00
url: /2019/07/18/how-to-disable-bouncing-icons-in-the-mac-dock/
featured_image: http://markgingrass.com/wp-content/uploads/2019/07/hqdefault-1-2.jpg
tap_disable_autolinker:
  - no
tap_autolink_inside_heading:
  - global
tap_autolink_random_placement:
  - global
classic-editor-remember:
  - classic-editor
categories:
  - Computer Tips

---
Sometimes, you will find there is a bouncing icon in the dock. The bouncing icon means that the particular app needs your attention. However, you can get rid off that bouncing icon. Here, I will show you how to get disable the bouncing icon in the dock.

## How to Disable Bouncing Icons in the MAC Dock:

First, hit **cmd + space** to open the **spotlight search**. Type **terminal** in the search box and press **Enter**. The terminal will pop up.

<img class="wp-image-608 size-full aligncenter" src="http://markgingrass.com/wp-content/uploads/2019/07/Bouncing.png" alt="" width="649" height="119" srcset="https://markgingrass.com/wp-content/uploads/2019/07/Bouncing.png 649w, https://markgingrass.com/wp-content/uploads/2019/07/Bouncing-300x55.png 300w" sizes="(max-width: 649px) 100vw, 649px" />

Now, type **defaults write com.apple.doc no-bouncing -bool TRUE** and press **Enter**

<img class="size-full wp-image-614 aligncenter" src="http://markgingrass.com/wp-content/uploads/2019/07/Bouncing1.png" alt="" width="651" height="101" srcset="https://markgingrass.com/wp-content/uploads/2019/07/Bouncing1.png 651w, https://markgingrass.com/wp-content/uploads/2019/07/Bouncing1-300x47.png 300w" sizes="(max-width: 651px) 100vw, 651px" />

Now, type **killall Dock**. The icon will now stop bouncing

<img class="size-full wp-image-610 aligncenter" src="http://markgingrass.com/wp-content/uploads/2019/07/Bouncing2.png" alt="" width="654" height="95" srcset="https://markgingrass.com/wp-content/uploads/2019/07/Bouncing2.png 654w, https://markgingrass.com/wp-content/uploads/2019/07/Bouncing2-300x44.png 300w" sizes="(max-width: 654px) 100vw, 654px" />

If you want to bring the bouncing icon back, simply, set the value **FALSE** instead of true, like below

<img class="size-full wp-image-611 aligncenter" src="http://markgingrass.com/wp-content/uploads/2019/07/Bouncing3.png" alt="" width="653" height="121" srcset="https://markgingrass.com/wp-content/uploads/2019/07/Bouncing3.png 653w, https://markgingrass.com/wp-content/uploads/2019/07/Bouncing3-300x56.png 300w" sizes="(max-width: 653px) 100vw, 653px" />

You can watch all these steps in a video below.

<iframe title="🖥️Disable Bouncing Icons MAC Dock 🖥️" width="1200" height="900" src="https://www.youtube.com/embed/w6vd6ow8r44?feature=oembed" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>