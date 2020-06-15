---
title: Scrape COVID-19 Data with R – No Experience
author: mtgingrass
type: page
date: 2020-04-05T17:25:03+00:00
classic-editor-remember:
  - classic-editor
tap_disable_autolinker:
  - no
tap_autolink_inside_heading:
  - global
tap_autolink_random_placement:
  - global

---
<div class="yotu-playlist yotuwp yotu-limit-min yotu-limit-max   yotu-thumb-169  yotu-template-grid" data-yotu="5ee799c7db100" data-page="1" id="yotuwp-5ee799c7bf89f" data-total="1" data-settings="eyJ0eXBlIjoicGxheWxpc3QiLCJpZCI6IlBMdWFrX2JHdmNXWlBzTEdFQnY1TE0xTXhwZFp1YUJCMFEiLCJwYWdpbmF0aW9uIjoib24iLCJwYWdpdHlwZSI6InBhZ2VyIiwiY29sdW1uIjoiMyIsInBlcl9wYWdlIjoiMTUiLCJ0ZW1wbGF0ZSI6ImdyaWQiLCJ0aXRsZSI6Im9uIiwiZGVzY3JpcHRpb24iOiJvbiIsInRodW1icmF0aW8iOiIxNjkiLCJtZXRhIjoib2ZmIiwibWV0YV9kYXRhIjoib2ZmIiwibWV0YV9wb3NpdGlvbiI6Im9mZiIsImRhdGVfZm9ybWF0Ijoib2ZmIiwibWV0YV9hbGlnbiI6Im9mZiIsInN1YnNjcmliZSI6Im9mZiIsImR1cmF0aW9uIjoib2ZmIiwibWV0YV9pY29uIjoib2ZmIiwibmV4dHRleHQiOiIiLCJwcmV2dGV4dCI6IiIsImxvYWRtb3JldGV4dCI6IiIsInBsYXllciI6eyJtb2RlIjoibGFyZ2UiLCJ3aWR0aCI6IjYwMCIsInNjcm9sbGluZyI6IjEwMCIsImF1dG9wbGF5Ijoib2ZmIiwiY29udHJvbHMiOiJvbiIsIm1vZGVzdGJyYW5kaW5nIjoib24iLCJsb29wIjoib2ZmIiwiYXV0b25leHQiOiJvZmYiLCJzaG93aW5mbyI6Im9uIiwicmVsIjoib24iLCJwbGF5aW5nIjoib2ZmIiwicGxheWluZ19kZXNjcmlwdGlvbiI6Im9mZiIsInRodW1ibmFpbHMiOiJvZmYiLCJjY19sb2FkX3BvbGljeSI6IjEiLCJjY19sYW5nX3ByZWYiOiIxIiwiaGwiOiIiLCJpdl9sb2FkX3BvbGljeSI6IjEifSwibGFzdF90YWIiOiJzZXR0aW5ncyIsInVzZV9hc19tb2RhbCI6Im9mZiIsIm1vZGFsX2lkIjoib2ZmIiwibGFzdF91cGRhdGUiOiIxNTY0ODYzMjU2Iiwic3R5bGluZyI6eyJwYWdlcl9sYXlvdXQiOiJkZWZhdWx0IiwiYnV0dG9uIjoiMSIsImJ1dHRvbl9jb2xvciI6IiIsImJ1dHRvbl9iZ19jb2xvciI6IiIsImJ1dHRvbl9jb2xvcl9ob3ZlciI6IiIsImJ1dHRvbl9iZ19jb2xvcl9ob3ZlciI6IiIsInZpZGVvX3N0eWxlIjoiIiwicGxheWljb25fY29sb3IiOiIiLCJob3Zlcl9pY29uIjoiIiwiZ2FsbGVyeV9iZyI6IiJ9LCJlZmZlY3RzIjp7InZpZGVvX2JveCI6IiIsImZsaXBfZWZmZWN0IjoiIn0sImdhbGxlcnlfaWQiOiI1ZWU3OTljN2JmODlmIiwibmV4dCI6IiIsInByZXYiOiIifQ==" data-player="large" data-showdesc="on">
  <div>
    <div class="yotu-wrapper-player" style="width:600px">
      <div class="yotu-playing">
        Updated - End to End Covid-19 Analysis with R - Import Data (1)
      </div>
      
      <div class="yotu-player">
        <div class="yotu-video-placeholder" id="yotu-player-5ee799c7db100">
        </div>
      </div>
      
      <div class="yotu-playing-status">
      </div>
      
      <div class="yotu-playing-description">
        #CradleToGraveR now a Discord! Come say hello: https://discord.gg/f2uDBvA<br /> First part, importing Covid-19 (coronavirus) data into R. Note that I changed all of the "less than" symbols to "equal" symbols due to YouTube policy not having angled brackets. <br /> <br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months <a class="thirstylink" target="_blank" title="SkillShare Free" href="http://markgingrass.com/recommends/skillshare-free/" data-shortcode="true">SkillShare Free</a> ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> ---<br /> title: "Covid Cases in R"<br /> output: html_notebook<br /> ---<br /> # Covid Data Import<br /> <br /> This is where we get the data: https://www.ecdc.europa.eu/en/geographical-distribution-2019-ncov-cases<br /> <br /> ```{r}<br /> library(httr)<br /> library(readxl)<br /> <br /> url1 = "https://www.ecdc.europa.eu/sites/default/files/documents/COVID-19-geographic-disbtribution-worldwide-2020-03-08.xls"<br /> <br /> GET(url1, write_disk(tf = tempfile(fileext = ".xls")))<br /> <br /> df = read_excel((tf))<br /> ```<br /> <br /> # Covid Data Clean Up<br /> <br /> This is cleaning up of the data. <br /> <br /> ```{r}<br /> sum(df$NewDeaths)<br /> ```<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ <a class="thirstylink" target="_blank" title="MacBook Pro Amazon" href="https://amzn.to/2JsJ4Ab" data-linkid="519" data-shortcode="true">MacBook Pro</a>: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ <a class="thirstylink" target="_blank" title="Swissgear 1900" href="https://amzn.to/2XByRtO" data-linkid="510" data-shortcode="true">Swissgear</a> Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ Green Screen - https://amzn.to/2JVzMgP<br /> ➔ Tripod Neewer: https://amzn.to/2uF275X<br /> ➔ Tripod (cheap) - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass
      </div>
    </div>
    
    <div class="yotu-pagination yotu-hide yotu-pager_layout-default yotu-pagination-top">
      <a href="#" class="yotu-pagination-prev yotu-button-prs yotu-button-prs-1" data-page="prev">Prev</a> <span class="yotu-pagination-current">1</span> <span>of</span> <span class="yotu-pagination-total">1</span> <a href="#" class="yotu-pagination-next yotu-button-prs yotu-button-prs-1" data-page="next">Next</a>
    </div>
    
    <div class="yotu-videos yotu-mode-grid yotu-column-3 yotu-player-mode-large">
      <ul>
        <li class=" yotu-first">
          <a href="#cdFIlaKKbkk" class="yotu-video" data-videoid="cdFIlaKKbkk" data-title="Updated - End to End Covid-19 Analysis with R - Import Data (1)" title="Updated - End to End Covid-19 Analysis with R - Import Data (1)"> 
          
          <div class="yotu-video-thumb-wrp">
            <div>
              <img class="yotu-video-thumb" src="https://i.ytimg.com/vi/cdFIlaKKbkk/sddefault.jpg" alt="Updated - End to End Covid-19 Analysis with R - Import Data (1)" />
            </div>
          </div>
          
          <h3 class="yotu-video-title">
            Updated - End to End Covid-19 Analysis with R - Import Data (1)
          </h3>
          
          <div class="yotu-video-description">
            #CradleToGraveR now a Discord! Come say hello: https://discord.gg/f2uDBvA<br /> First part, importing Covid-19 (coronavirus) data into R. Note that I changed all of the "less than" symbols to "equal" symbols due to YouTube policy not having angled brackets. <br /> <br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ <a class="thirstylink" target="_blank" title="Blue Yeti" href="https://amzn.to/2IheZTG" data-linkid="497" data-shortcode="true">Blue Yeti</a> Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months SkillShare Free ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> ---<br /> title: "Covid Cases in R"<br /> output: html_notebook<br /> ---<br /> # Covid Data Import<br /> <br /> This is where we get the data: https://www.ecdc.europa.eu/en/geographical-distribution-2019-ncov-cases<br /> <br /> ```{r}<br /> library(httr)<br /> library(readxl)<br /> <br /> url1 = "https://www.ecdc.europa.eu/sites/default/files/documents/COVID-19-geographic-disbtribution-worldwide-2020-03-08.xls"<br /> <br /> GET(url1, write_disk(tf = tempfile(fileext = ".xls")))<br /> <br /> df = read_excel((tf))<br /> ```<br /> <br /> # Covid Data Clean Up<br /> <br /> This is cleaning up of the data. <br /> <br /> ```{r}<br /> sum(df$NewDeaths)<br /> ```<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ MacBook Pro: https://amzn.to/2XxeBsG<br /> ➔ <a class="thirstylink" target="_blank" title="Blue Yeti" href="https://amzn.to/2IheZTG" data-linkid="497" data-shortcode="true">Blue Yeti</a> Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ Green Screen - https://amzn.to/2JVzMgP<br /> ➔ Tripod Neewer: https://amzn.to/2uF275X<br /> ➔ <a class="thirstylink" target="_blank" title="Tripod Amazon" href="https://amzn.to/2Eo2wv4" data-linkid="512" data-shortcode="true">Tripod</a> (cheap) - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass
          </div></a>
        </li>
        
        <li class="">
          <a href="#mtDTUuLPIsY" class="yotu-video" data-videoid="mtDTUuLPIsY" data-title="COVID-19 Coronavirus analysis with R Concatenate Strings with Date & paste0" title="COVID-19 Coronavirus analysis with R Concatenate Strings with Date & paste0"> 
          
          <div class="yotu-video-thumb-wrp">
            <div>
              <img class="yotu-video-thumb" src="https://i.ytimg.com/vi/mtDTUuLPIsY/sddefault.jpg" alt="COVID-19 Coronavirus analysis with R Concatenate Strings with Date & paste0" />
            </div>
          </div>
          
          <h3 class="yotu-video-title">
            COVID-19 Coronavirus analysis with R Concatenate Strings with Date & paste0
          </h3>
          
          <div class="yotu-video-description">
            #CradleToGraveR now a Discord! Come say hello: https://discord.gg/f2uDBvA<br /> COVID-19 Coronavirus analysis with R Concatenate Strings with Date & paste0<br /> <br /> Calculate the death rates using this coronavirus data. <br /> <br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months SkillShare Free ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> url1 = paste0("https://www.ecdc.europa.eu/sites/default/files/documents/COVID-19-geographic-disbtribution-worldwide-",Sys.Date(),".xls")<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ MacBook Pro: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ <a class="thirstylink" target="_blank" title="Green Screen Amazon" href="https://amzn.to/2JVzMgP" data-linkid="511" data-shortcode="true">Green Screen</a> - https://amzn.to/2JVzMgP<br /> ➔ Tripod Neewer: https://amzn.to/2uF275X<br /> ➔ Tripod (cheap) - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass
          </div></a>
        </li>
        
        <li class="">
          <a href="#sSWHFXCBtQg" class="yotu-video" data-videoid="sSWHFXCBtQg" data-title="R CDC Data Fixed rmarkdown Tutorial" title="R CDC Data Fixed rmarkdown Tutorial"> 
          
          <div class="yotu-video-thumb-wrp">
            <div>
              <img class="yotu-video-thumb" src="https://i.ytimg.com/vi/sSWHFXCBtQg/sddefault.jpg" alt="R CDC Data Fixed rmarkdown Tutorial" />
            </div>
          </div>
          
          <h3 class="yotu-video-title">
            R CDC Data Fixed rmarkdown Tutorial
          </h3>
          
          <div class="yotu-video-description">
            #CradleToGraveR now a Discord! Come say hello: https://discord.gg/f2uDBvA<br /> R CDC Data Fixed rmarkdown Tutorial. Using names(), read_xlsx() and using r within rmarkdown narratives.<br /> <br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ <a class="thirstylink" target="_blank" title="Blue Yeti" href="https://amzn.to/2IheZTG" data-linkid="497" data-shortcode="true">Blue Yeti</a> Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months SkillShare Free ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months <a class="thirstylink" target="_blank" title="SkillShare Free" href="http://markgingrass.com/recommends/skillshare-free/" data-shortcode="true">SkillShare Free</a> ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> url1 = paste0("https://www.ecdc.europa.eu/sites/default/files/documents/COVID-19-geographic-disbtribution-worldwide-",Sys.Date(),".xls")<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ MacBook Pro: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ Green Screen - https://amzn.to/2JVzMgP<br /> ➔ Tripod Neewer: https://amzn.to/2uF275X<br /> ➔ Tripod (cheap) - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass
          </div></a>
        </li>
        
        <li class="">
          <a href="#dmAgm3ULyvo" class="yotu-video" data-videoid="dmAgm3ULyvo" data-title="Kable Table with R and Coronavirus COVID 19 Death Rates" title="Kable Table with R and Coronavirus COVID 19 Death Rates"> 
          
          <div class="yotu-video-thumb-wrp">
            <div>
              <img class="yotu-video-thumb" src="https://i.ytimg.com/vi/dmAgm3ULyvo/sddefault.jpg" alt="Kable Table with R and Coronavirus COVID 19 Death Rates" />
            </div>
          </div>
          
          <h3 class="yotu-video-title">
            Kable Table with R and Coronavirus COVID 19 Death Rates
          </h3>
          
          <div class="yotu-video-description">
            #CradleToGraveR now a Discord! Come say hello: https://discord.gg/f2uDBvA<br /> Kable Table with R and Coronavirus COVID 19 Death Rates
          </div></a>
        </li>
        
        <li class="">
          <a href="#r56SB0USueg" class="yotu-video" data-videoid="r56SB0USueg" data-title="Does COVID-19 (coronavirus) URL File Exists using R - European Center for Disease Control" title="Does COVID-19 (coronavirus) URL File Exists using R - European Center for Disease Control"> 
          
          <div class="yotu-video-thumb-wrp">
            <div>
              <img class="yotu-video-thumb" src="https://i.ytimg.com/vi/r56SB0USueg/sddefault.jpg" alt="Does COVID-19 (coronavirus) URL File Exists using R - European Center for Disease Control" />
            </div>
          </div>
          
          <h3 class="yotu-video-title">
            Does COVID-19 (coronavirus) URL File Exists using R - European Center for Disease Control
          </h3>
          
          <div class="yotu-video-description">
            #CradleToGraveR now a Discord! Come say hello: https://discord.gg/f2uDBvA<br /> Does COVID-19 (coronavirus) URL File Exists using R - European Center for Disease Control<br /> <br /> Download the code here: http://markgingrass.com/2020/03/19/does-covid-19-coronavirus-url-file-exists-using-r-european-center-for-disease-control/<br /> <br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months <a class="thirstylink" target="_blank" title="SkillShare Free" href="http://markgingrass.com/recommends/skillshare-free/" data-shortcode="true">SkillShare Free</a> ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ MacBook Pro: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ Green Screen - https://amzn.to/2JVzMgP<br /> ➔ Tripod Neewer: https://amzn.to/2uF275X<br /> ➔ Tripod (cheap) - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass<br /> <br /> <br /> <br /> MARK GINGRASS CHANNEL<br /> <br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ <a class="thirstylink" target="_blank" title="Blue Yeti" href="https://amzn.to/2IheZTG" data-linkid="497" data-shortcode="true">Blue Yeti</a> Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months SkillShare Free ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ MacBook Pro: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ <a class="thirstylink" target="_blank" title="Swissgear 1900" href="https://amzn.to/2XByRtO" data-linkid="510" data-shortcode="true">Swissgear</a> Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ Green Screen - https://amzn.to/2JVzMgP<br /> ➔ <a class="thirstylink" target="_blank" title="Tripod Amazon" href="https://amzn.to/2Eo2wv4" data-linkid="512" data-shortcode="true">Tripod</a> Neewer: https://amzn.to/2uF275X<br /> ➔ <a class="thirstylink" target="_blank" title="Tripod Amazon" href="https://amzn.to/2Eo2wv4" data-linkid="512" data-shortcode="true">Tripod</a> (cheap) - https://amzn.to/2Eo2wv4<br /> ➔ Apple Magic Mouse 2: https://amzn.to/2UWw386<br /> ➔ Apple Magic Keyboard: https://amzn.to/2HvfdFi<br /> ➔ Samsung SSD Drive: https://amzn.to/30UVbgz<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass
          </div></a>
        </li>
        
        <li class="">
          <a href="#ioqrwUaSde8" class="yotu-video" data-videoid="ioqrwUaSde8" data-title="Plot COVID 19 coronavirus Data using R dplyr and ggplot" title="Plot COVID 19 coronavirus Data using R dplyr and ggplot"> 
          
          <div class="yotu-video-thumb-wrp">
            <div>
              <img class="yotu-video-thumb" src="https://i.ytimg.com/vi/ioqrwUaSde8/sddefault.jpg" alt="Plot COVID 19 coronavirus Data using R dplyr and ggplot" />
            </div>
          </div>
          
          <h3 class="yotu-video-title">
            Plot COVID 19 coronavirus Data using R dplyr and ggplot
          </h3>
          
          <div class="yotu-video-description">
            #CradleToGraveR now a Discord! Come say hello: https://discord.gg/f2uDBvA<br /> Plot COVID 19 coronavirus Data using R dplyr and ggplot<br /> <br /> Download code here: http://markgingrass.com/2020/03/19/does-covid-19-coronavirus-url-file-exists-using-r-european-center-for-disease-control/<br /> <br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ <a class="thirstylink" target="_blank" title="Blue Yeti" href="https://amzn.to/2IheZTG" data-linkid="497" data-shortcode="true">Blue Yeti</a> Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months SkillShare Free ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> This is where we get the data: https://www.ecdc.europa.eu/en/geographical-distribution-2019-ncov-cases<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ <a class="thirstylink" target="_blank" title="MacBook Pro Amazon" href="https://amzn.to/2JsJ4Ab" data-linkid="519" data-shortcode="true">MacBook Pro</a>: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ <a class="thirstylink" target="_blank" title="Green Screen Amazon" href="https://amzn.to/2JVzMgP" data-linkid="511" data-shortcode="true">Green Screen</a> - https://amzn.to/2JVzMgP<br /> ➔ Tripod Neewer: https://amzn.to/2uF275X<br /> ➔ Tripod (cheap) - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass
          </div></a>
        </li>
        
        <li class="">
          <a href="#ZGyr199lS9U" class="yotu-video" data-videoid="ZGyr199lS9U" data-title="DT datatable COVID 19 coronavirus sort with R" title="DT datatable COVID 19 coronavirus sort with R"> 
          
          <div class="yotu-video-thumb-wrp">
            <div>
              <img class="yotu-video-thumb" src="https://i.ytimg.com/vi/ZGyr199lS9U/sddefault.jpg" alt="DT datatable COVID 19 coronavirus sort with R" />
            </div>
          </div>
          
          <h3 class="yotu-video-title">
            DT datatable COVID 19 coronavirus sort with R
          </h3>
          
          <div class="yotu-video-description">
            #CradleToGraveR now a Discord! Come say hello: https://discord.gg/f2uDBvA<br /> Code here: http://markgingrass.com/2020/03/25/dt-datatable-covid-19-coronavirus-sort-with-r/<br /> <br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months SkillShare Free ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> This is where we get the data: https://www.ecdc.europa.eu/en/geographical-distribution-2019-ncov-cases<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ <a class="thirstylink" target="_blank" title="MacBook Pro Amazon" href="https://amzn.to/2JsJ4Ab" data-linkid="519" data-shortcode="true">MacBook Pro</a>: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ <a class="thirstylink" target="_blank" title="Swissgear 1900" href="https://amzn.to/2XByRtO" data-linkid="510" data-shortcode="true">Swissgear</a> Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ Green Screen - https://amzn.to/2JVzMgP<br /> ➔ Tripod Neewer: https://amzn.to/2uF275X<br /> ➔ Tripod (cheap) - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass
          </div></a>
        </li>
        
        <li class="">
          <a href="#px_Cc4Axj7M" class="yotu-video" data-videoid="px_Cc4Axj7M" data-title="COVID CSV Data Update Plot - data from European Center for Disease and Prevention" title="COVID CSV Data Update Plot - data from European Center for Disease and Prevention"> 
          
          <div class="yotu-video-thumb-wrp">
            <div>
              <img class="yotu-video-thumb" src="https://i.ytimg.com/vi/px_Cc4Axj7M/sddefault.jpg" alt="COVID CSV Data Update Plot - data from European Center for Disease and Prevention" />
            </div>
          </div>
          
          <h3 class="yotu-video-title">
            COVID CSV Data Update Plot - data from European Center for Disease and Prevention
          </h3>
          
          <div class="yotu-video-description">
            #CradleToGraveR now a Discord! Come say hello: https://discord.gg/f2uDBvA<br /> COVID CSV Data Update from the <br /> <br /> Code here: http://markgingrass.com/2020/03/31/covid-csv-data-update-plot/<br /> <br /> Download today’s data on the geographic distribution of COVID-19 cases worldwide here: https://www.ecdc.europa.eu/en/publications-data/download-todays-data-geographic-distribution-covid-19-cases-worldwide<br /> <br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months <a class="thirstylink" target="_blank" title="SkillShare Free" href="http://markgingrass.com/recommends/skillshare-free/" data-shortcode="true">SkillShare Free</a> ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ MacBook Pro: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ Green Screen - https://amzn.to/2JVzMgP<br /> ➔ Tripod Neewer: https://amzn.to/2uF275X<br /> ➔ <a class="thirstylink" target="_blank" title="Tripod Amazon" href="https://amzn.to/2Eo2wv4" data-linkid="512" data-shortcode="true">Tripod</a> (cheap) - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass<br /> <br /> <br /> <br /> MARK GINGRASS CHANNEL<br /> <br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months SkillShare Free ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ <a class="thirstylink" target="_blank" title="MacBook Pro Amazon" href="https://amzn.to/2JsJ4Ab" data-linkid="519" data-shortcode="true">MacBook Pro</a>: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ Swissgear Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ <a class="thirstylink" target="_blank" title="Green Screen Amazon" href="https://amzn.to/2JVzMgP" data-linkid="511" data-shortcode="true">Green Screen</a> - https://amzn.to/2JVzMgP<br /> ➔ Tripod Neewer: https://amzn.to/2uF275X<br /> ➔ Tripod (cheap) - https://amzn.to/2Eo2wv4<br /> ➔ Apple Magic Mouse 2: https://amzn.to/2UWw386<br /> ➔ Apple Magic Keyboard: https://amzn.to/2HvfdFi<br /> ➔ Samsung SSD Drive: https://amzn.to/30UVbgz<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass
          </div></a>
        </li>
        
        <li class=" yotu-last">
          <a href="#M5tSC3u1lkw" class="yotu-video" data-videoid="M5tSC3u1lkw" data-title="Fastest COVID19 Scrape using R - Complete Tutorial in under 30 min" title="Fastest COVID19 Scrape using R - Complete Tutorial in under 30 min"> 
          
          <div class="yotu-video-thumb-wrp">
            <div>
              <img class="yotu-video-thumb" src="https://i.ytimg.com/vi/M5tSC3u1lkw/sddefault.jpg" alt="Fastest COVID19 Scrape using R - Complete Tutorial in under 30 min" />
            </div>
          </div>
          
          <h3 class="yotu-video-title">
            Fastest COVID19 Scrape using R - Complete Tutorial in under 30 min
          </h3>
          
          <div class="yotu-video-description">
            #CradleToGraveR now a Discord! Come say hello: https://discord.gg/f2uDBvA<br /> Fastest COVID19 Scrape using R - Complete Tutorial in under 30 min.<br /> Get the code here: https://markgingrass.com/2020/04/02/fastest-method-to-scrape-covid-19-data-using-r-without-programming-experience/<br /> <br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months SkillShare Free ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ MacBook Pro: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ <a class="thirstylink" target="_blank" title="Swissgear 1900" href="https://amzn.to/2XByRtO" data-linkid="510" data-shortcode="true">Swissgear</a> Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ <a class="thirstylink" target="_blank" title="Green Screen Amazon" href="https://amzn.to/2JVzMgP" data-linkid="511" data-shortcode="true">Green Screen</a> - https://amzn.to/2JVzMgP<br /> ➔ Tripod Neewer: https://amzn.to/2uF275X<br /> ➔ Tripod (cheap) - https://amzn.to/2Eo2wv4<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass<br /> <br /> <br /> <br /> MARK GINGRASS CHANNEL<br /> <br /> 👇SUBSCRIBE & HIT THE 👍 BUTTON 👇<br /> R Channel: http://bit.ly/38yfFP9<br /> How I Create Videos: http://bit.ly/sub_to_chan<br /> <br /> ➔ TubeBuddy: http://bit.ly/t_buddy<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ 2 Months <a class="thirstylink" target="_blank" title="SkillShare Free" href="http://markgingrass.com/recommends/skillshare-free/" data-shortcode="true">SkillShare Free</a> ➔ https://www.skillshare.com/r/profile/Mark-Gingrass/2388101<br /> <br /> Do you have more to add? Let me know how you liked the video or if I need anything corrected in the comments below. <br /> - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -<br /> TECH GEAR I USE DAILY<br /> ➔ <a class="thirstylink" target="_blank" title="MacBook Pro Amazon" href="https://amzn.to/2JsJ4Ab" data-linkid="519" data-shortcode="true">MacBook Pro</a>: https://amzn.to/2XxeBsG<br /> ➔ Blue Yeti Mic: https://amzn.to/2IheZTG<br /> ➔ <a class="thirstylink" target="_blank" title="Swissgear 1900" href="https://amzn.to/2XByRtO" data-linkid="510" data-shortcode="true">Swissgear</a> Backpack: https://youtu.be/VTTnRMyFkB8 <br /> ➔ Canon EOS 90D Camera: https://amzn.to/2u0o52K<br /> ➔ Apple Magic Trackpad 2: https://amzn.to/31XDugG<br /> ➔ mTuber for Title Effects : https://motionvfx.sjv.io/3M3KM<br /> ➔ mArrows for animated arrows: https://motionvfx.sjv.io/9B3oe<br /> ➔ Microphone - https://amzn.to/2LYfJkr<br /> ➔ Backpack - https://amzn.to/2Ep4uez<br /> ➔ <a class="thirstylink" target="_blank" title="Green Screen Amazon" href="https://amzn.to/2JVzMgP" data-linkid="511" data-shortcode="true">Green Screen</a> - https://amzn.to/2JVzMgP<br /> ➔ <a class="thirstylink" target="_blank" title="Tripod Amazon" href="https://amzn.to/2Eo2wv4" data-linkid="512" data-shortcode="true">Tripod</a> Neewer: https://amzn.to/2uF275X<br /> ➔ Tripod (cheap) - https://amzn.to/2Eo2wv4<br /> ➔ Apple Magic Mouse 2: https://amzn.to/2UWw386<br /> ➔ Apple Magic Keyboard: https://amzn.to/2HvfdFi<br /> ➔ Samsung SSD Drive: https://amzn.to/30UVbgz<br /> <br /> HOMEPAGE - https://www.markgingrass.com/<br /> REVIEWS/BLOG - https://www.markgingrass.com/blogs/re...<br /> <br /> OTHER COURSES I CURRENTLY TEACH<br /> ➔ C++ Course: http://bit.ly/cpp_course<br /> ➔ Supply Chain Management: http://bit.ly/scm_course<br /> <br /> Let's chat<br /> https://twitter.com/MarkGingrass
          </div></a>
        </li>
      </ul>
    </div>
    
    <div class="yotu-pagination yotu-hide yotu-pager_layout-default yotu-pagination-bottom">
      <a href="#" class="yotu-pagination-prev yotu-button-prs yotu-button-prs-1" data-page="prev">Prev</a> <span class="yotu-pagination-current">1</span> <span>of</span> <span class="yotu-pagination-total">1</span> <a href="#" class="yotu-pagination-next yotu-button-prs yotu-button-prs-1" data-page="next">Next</a>
    </div>
  </div>
</div>