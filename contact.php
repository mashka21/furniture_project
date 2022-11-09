<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<link rel="stylesheet" href="stl.css">

<body class="hold-transition skin-blue layout-top-nav">

<?php include 'includes/navbar.php'; ?>
        <!-- contact us page -->
        <section class="location">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1825.7571387166668!2d90.42556531727313!3d23.76469438460394!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c79fb9742cd1%3A0x8c2d93044400cb83!2sMoto%20Spark!5e0!3m2!1sen!2sbd!4v1634051086343!5m2!1sen!2sbd" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </section>
        <section class="contact-us">
            <div class="row">
                <div class="contact-col">
                    <div>
                        <i class="fa fa-home"></i>
                        <span>
                            <h5>xyx road, abc building, xblock</h5>
                            <p>dhaka, bd</p>
                        </span>
                    </div>
                    <div>
                        <i class="fa fa-phone"></i>
                        <span>
                            <h5>x678686879887</h5>
                            <p>sat-wed</p>
                        </span>
                    </div>
                    <div>
                        <i class="fa fa-envelope-o"></i>
                        <span>
                            <h5>mudane31@outlook.com</h5>
                            <p>Email us</p>
                        </span>
                    </div>
                    
                </div>


                <div class="contact-col">

                    <form action="form-handle.php" method="POST">
                        <input type="text" name="name" placeholder="Enter your name" required>
                        <input type="email" name="email" placeholder="Enter your email address" required>
                        <input type="number" name="number" placeholder="Enter your  phone number" required>
                        <input type="text" name="subject" placeholder="Enter your Product Code " required>
                        <textarea name="message" id=""  rows="8" placeholder="Message"></textarea>
                        <button type="submit" class="hero-btn red-btn">send message</button>

                    </form>
                </div>
            </div>
        </section>

        
  
  	<?php include 'includes/footer.php'; ?>


	<?php include 'includes/scripts.php'; ?>
</body>
</html>