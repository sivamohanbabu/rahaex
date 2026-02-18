$filePath = "c:\Users\sivav\OneDrive\Documents\rahaenterprises\index.html"
$content = Get-Content $filePath -Raw

# Replace the corrupted Fashion/Media section
$oldSection = @'
                 <div class="tab-pane" id="tabs-tab-6">
                  <div class="row">
                    <div class="col-lg-8 details order-2 order-lg-1">
                      <h3>Fashion</h3>
Their creative approach, timely execution, and strong content understanding truly stand out.
The RAHA team worked with great dedication, clarity, and consistency throughout.
The quality of their work greatly enhanced our channel's reach and overall presentation.
We sincerely appreciate RAHA for being a reliable and result-oriented media partner.</p>
                    </div>
                    <div class="col-lg-4 text-center order-1 order-lg-2">
                      <img src="assets/img/testimonials/testimonials-6.jpeg" alt="Testimonials on news" class="img-fluid"
                       ">
                    </div>
              
                   
              </div>
                    <div class="col-lg-8 details order-2 order-lg-1">
                      <h3>Media</h3>
                      <b>
                        
                        
                      </b>
                      <p>Working with RAHA has been a wonderful experience for Tijoree by Avani, even while operating from the USA.
The team's dedication to video editing and creative storytelling truly stands out.
Every reel and visual is crafted with precision, elegance, and brand clarity.
Their promotional strategies helped our collections reach the right audience consistently.
Despite the distance, coordination was seamless and highly professional.
RAHA is a reliable partner for brands seeking creativity, commitment, and results."
</p>
<p class="fst-italic">Avani Kolli.
Founder -Tijoree by Avani, Tijoree Jewels.</p>
                    </div>
                    <div class="col-lg-4 text-center order-1 order-lg-2">
                      <img src="assets/img/testimonials/fashion-logo.jpeg" alt="Crispy Days Food Chains" class="img-fluid"
                        style="border-radius: 50%;border: 1px solid blue;">
                    </div>


                  </div>
                </div>
'@

$newSection = @'
                <div class="tab-pane" id="tabs-tab-6">
                  <div class="row">
                    <div class="col-lg-8 details order-2 order-lg-1">
                      <h3>Fashion</h3>
                      <b></b>
                      <p>Working with RAHA has been a wonderful experience for Tijoree by Avani, even while operating from the USA.
The team's dedication to video editing and creative storytelling truly stands out.
Every reel and visual is crafted with precision, elegance, and brand clarity.
Their promotional strategies helped our collections reach the right audience consistently.
Despite the distance, coordination was seamless and highly professional.
RAHA is a reliable partner for brands seeking creativity, commitment, and results."</p>
<p class="fst-italic">Avani Kolli. Founder -Tijoree by Avani, Tijoree Jewels.</p>
                    </div>
                    <div class="col-lg-4 text-center order-1 order-lg-2">
                      <img src="assets/img/testimonials/fashion-logo.jpeg" alt="Tijoree by Avani" class="img-fluid" style="border-radius: 50%; border: 1px solid blue;">
                    </div>
                  </div>
                </div>
                <div class="tab-pane" id="tabs-tab-7">
                  <div class="row">
                    <div class="col-lg-8 details order-2 order-lg-1">
                      <h3>Media</h3>
                      <b></b>
                      <p>We are extremely happy to receive professional services from the RAHA Team for our news channel, Sathagni.
Their creative approach, timely execution, and strong content understanding truly stand out.
The RAHA team worked with great dedication, clarity, and consistency throughout.
The quality of their work greatly enhanced our channel's reach and overall presentation.
We sincerely appreciate RAHA for being a reliable and result-oriented media partner.</p>
                    </div>
                    <div class="col-lg-4 text-center order-1 order-lg-2">
                      <img src="assets/img/testimonials/testimonials-6.jpeg" alt="Sathagni News" class="img-fluid" style="border-radius: 50%; border: 1px solid blue;">
                    </div>
                  </div>
                </div>
'@

$newContent = $content -replace [regex]::Escape($oldSection), $newSection
Set-Content -Path $filePath -Value $newContent

Write-Host "Fixed Fashion and Media tabs successfully!"
