
<!-- Contact Us -->
<main class="container">
    <div class="col-xl-12">
        <?= $this->session->flashdata('pesan');?>
    </div>
    <div class="card">
        <div class="card-body">
            <h2 id="h-contact">Contact Us</h2>
            <div id="red-line"></div>
            <form action="<?= base_url('landing_page/message');?>" method="post">
                <div id="sm-nm">Name</div>
                <input type="text" name="name" id="name" placeholder="Name in here">
                <div id="sm-em">Email</div>
                <input type="email" name="email" id="email" placeholder="Email in here">
                <div class="message">
                    <div id="sm-msg">Message</div>
                    <textarea name="message" id="message" rows="9" placeholder="Write message in here..."></textarea>
                </div>
                <div class="checkbox">
                    <input type="checkbox" id="robot" name="robot" value="robot">
                    <label class="my-auto" for="robot">I'm not a robot</label>
                </div>
                <button class="btn btn-danger">Send</button>
            </form>
        </div>
    </div>
</main>