<!-- Footer -->
<footer>
    <div class="row">
        <div class="col-sm-8 col-lg-4" id="story">
            <h4>Story</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem
                ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
        </div>
        <div class="col-sm-12 col-lg-4" id="open">
            <h4>We Are</h4>
            <img src="<?= base_url('assets/');?>bromind_style/img/OPEN.svg" alt="OPEN">
            <table>
                <tr>
                    <td>Monday - Friday</td>
                    <td id="space"></td>
                    <td>| <?= $website[0]->senju;?></td>
                </tr>
                <tr>
                    <td>Saturday</td>
                    <td id="space"></td>
                    <td>| <?= $website[0]->sabtu;?></td>
                </tr>
                <tr>
                    <td>Sunday</td>
                    <td id="space"></td>
                    <td>| <?= $website[0]->weekend;?></td>
                </tr>
            </table>
        </div>
        <!-- Line White 1 -->
        <div class="d-none" id="ln-1"></div>
        <div class="col-sm-12 col-lg-3" id="floc">
            <div id="foll">
                <h4>Follow Us</h4>
                <ul>
                    <li>
                        <a href="<?= $website[0]->yt;?>" target="blank">
                            <div id="swhite" class="text-center">
                                <i class="fab fa-youtube align-bottom"></i>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="<?= $website[0]->ig;?>" target="blank">
                            <div id="swhite" class="text-center">
                                <i class="fab fa-instagram align-bottom"></i>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="<?= $website[0]->fb;?>" target="blank">
                            <div id="swhite" class="text-center">
                                <i class="fab fa-facebook-f align-bottom"></i>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
            <div id="loc">
                <h4>Our Location</h4>
                <ul>
                    <li>
                        <img src="<?= base_url('assets/');?>bromind_style/img/icons/my_location.png" alt="loc">
                    </li>
                    <li>
                        <a href="<?= $website[0]->maps;?>" target="blank">
                            <?= $website[0]->location;?>
                        </a>
                    </li>
                </ul>
            </div>
        </div>


        <!-- Line White 2 -->
        <div class="d-none" id="ln-2"></div>
        <div class="col-sm-12 mx-auto text-center" id="copyright">&copy; 2010 - 2020 BroMind Cafe</div>
    </div>
</footer>
<script type="text/javascript" src="<?= base_url('assets/');?>bromind_style/js/jquery-3.5.1.slim.min.js"></script>
<script type="text/javascript" src="<?= base_url('assets/');?>bromind_style/js/bootstrap.min.js"></script>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js " integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj " crossorigin="anonymous "></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js " integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN " crossorigin="anonymous "></script>
<script src="<?= base_url('assets/');?>bromind_style/js/bootstrap.min.js "></script>
<script src="<?= base_url('assets/');?>bromind_style/js/navbar-collapse.js"></script>
<script src="https://kit.fontawesome.com/8fd9820964.js" crossorigin="anonymous"></script>

<script src="<?= base_url('assets/');?>bootstrap-4.5.0/js/bootstrap.js"></script>
<script src="<?= base_url('assets/');?>bootstrap-4.5.0/js/jquery.min.js"></script>
<script src="<?= base_url('assets/');?>bootstrap-4.5.0/js/bootstrap.bundle.min.js"></script>
<script src="<?= base_url('assets/');?>bootstrap-4.5.0/js/jquery.easing.min.js"></script>
<script>

    $(document).ready(function(){

        //order wa
        // $('.order').on('click',function(){
        //     let name_product = $(this).find('#name_product').text();
        //     let qty = $(this).find('#qty_order').val();
        //     let price = $(this).find('#price').val();
        //     let bond = qty * price;
            
        //     window.open('https://api.whatsapp.com/send?phone=+6285156081146&text=Haloo saya berniat memesan prodak ' +name_product + ' jumlah pesanan ' + qty + ' harga Rp ' +bond);  
        // });

        // menghitung total price pada cart
        total();
        $('.qty').change(function(){
            total();
        });

        $('.price').change(function(){
            total();
        });

        // cari daftar menu
        $('#search').on('keyup',function(){
            let value = $(this).val().toLowerCase();
            
            $('#all-product > .form-group').filter(function(){
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            })
        })

        //garis pada navbar
        $('.nav-item').on('click',function(){
            $('.nav-item').removeClass('active');
            $(this).addClass('active');
        });

        $('.alert').alert().delay(3000).slideUp('slow');
    });

    // function order_wa(){
    //     for (let i = 1; i <= $('.single-order').length; i++){

    //         $('#singleOrder'+i).on('click',function(){
    //             let name_product = $(this).find('#name_product').text();
    //             let qty = $(this).find('#qty_order').val();
    //             let price = $(this).find('#price').val();
    //             let bond = qty * price;
                
    //             window.open('https://api.whatsapp.com/send?phone=+6285156081146&text=Haloo saya berniat memesan prodak ' +name_product + ' jumlah pesanan ' + qty + ' harga Rp ' +bond);
    //         })
    //     }
    // }

    function total(){

        var sum = 0;
        $('#list-cart-single > .form-group > .list-cart').each(function(){
            var qty = $(this).find('.qty').val();
            var price = $(this).find('.price').text();
            var total = (qty * price);
            sum += total;
            $('#total_price').val(sum);
        });
    }

    // function googleTranslateElementInit2() {
    //     new google.translate.TranslateElement(
    // {
    //     pageLanguage: 'id',
    //     autoDisplay: false
    // },

    //     'google_translate_element2');
    // }    

    // function GTranslateFireEvent(element,event){
    //     try{
    //         if(document.createEventObject){
    //             var evt=document.createEventObject();
    //             element.fireEvent('on'+event,evt)
    //         } else{
    //             var evt=document.createEvent('HTMLEvents');
    //             evt.initEvent(event,true,true);
    //             element.dispatchEvent(evt)
    //         }
    //     }
    //     catch(e){}
    // }

    // function doGTranslate(lang_pair){
    //     if(lang_pair.value)lang_pair=lang_pair.value;
    //     if(lang_pair=='')return;
    //         var lang=lang_pair.split('|')[1];
    //         var teCombo;
    //         var sel=document.getElementsByTagName('select');
            
    //     for(var i=0;i<sel.length;i++)
    //         if(sel[i].className=='goog-te-combo')teCombo=sel[i];
    //             if(document.getElementById('google_translate_element2')==null||document.getElementById('google_translate_element2').innerHTML.length==0||teCombo.length==0||teCombo.innerHTML.length==0)
    //             {
    //                 setTimeout(function(){doGTranslate(lang_pair)},500)
    //             }else{
    //                 teCombo.value=lang;GTranslateFireEvent(teCombo,'change');
    //                 GTranslateFireEvent(teCombo,'change')
    //             }
    // }

</script>
</body>
</html>