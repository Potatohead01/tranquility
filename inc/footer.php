 <style>
    footer a,
    footer a:visited {
       color: inherit;
    }

    footer .copyright {
       color: #d8d8d8;
    }
 </style>
 <!-- footer
   ================================================== -->
 <footer>

    <div class="row">

       <div class="twelve columns">

          <ul class="social-links">
             <li><a target="_blank" href="<?php echo $contact['facebook'] ?>"><i class="fa fa-facebook"></i></a></li>
             <li><a target="_blank" href="<?php echo $contact['twitter'] ?>"><i class="fa fa-twitter"></i></a></li>
             <li><a target="_blank" href="https://wa.me/62895320594128<?php echo $contact['mobile'] ?>"><i class="bi bi-whatsapp"></i></a></li>
             <li><a target="_blank" href="<?php echo $contact['linkin'] ?>"><i class="bi bi-instagram"></i></a></li>
          </ul>

          <ul class="copyright">
             <li><?php echo $_settings->info('name') ?> &copy; Copyright <?php echo date('Y') ?></li>
             <!--  <li>Design by <a href="http://srikrishnacommunication.com/Giridesigns.html" title="Styleshout" target="_blank">Giri Designs</a></li>    -->
          </ul>

       </div>

       <div id="go-top"><a class="smoothscroll" title="Back to Top" href="#home"><i class="icon-up-open"></i></a></div>

    </div>

 </footer> <!-- Footer End-->

 <!-- Java Script
   ================================================== -->
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
 <script>
    window.jQuery || document.write('<script src="<?php echo base_url ?>profile_asset/js/jquery-1.10.2.min.js"><\/script>')
 </script>
 <script type="text/javascript" src="<?php echo base_url ?>profile_asset/js/jquery-migrate-1.2.1.min.js"></script>

 <script src="<?php echo base_url ?>profile_asset/js/jquery.flexslider.js"></script>
 <script src="<?php echo base_url ?>profile_asset/js/waypoints.js"></script>
 <script src="<?php echo base_url ?>profile_asset/js/jquery.fittext.js"></script>
 <script src="<?php echo base_url ?>profile_asset/js/magnific-popup.js"></script>
 <script src="<?php echo base_url ?>profile_asset/js/init.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>