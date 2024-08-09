import"./modulepreload-polyfill-B5Qt9EMX.js";import{a as m}from"./cart-U_400-W4.js";class g{constructor(e=0){this.items=[],this.currentId=e}addItem(e,l,o,t,i){const s={id:this.currentId++,name:e,description:l,imageUrl:o,hoverImageUrl:t,price:i};this.items.push(s)}loadItemsFromLocalStorage(){const e=localStorage.getItem("items");e&&JSON.parse(e).forEach(o=>{this.addItem(o.name,o.description,o.imageUrl,o.hoverImageUrl,o.price)})}getItems(){return this.items}}function u(){const a=document.getElementById("list-items"),e=document.getElementById("modalModal"),l=document.getElementById("product-detailsModal");a.addEventListener("click",t=>{const i=t.target.closest(".modal-text");if(!i)return;const s=JSON.parse(i.dataset.item);o(s)});function o(t){l.innerHTML="";const i=`
            <div id="carouselExampleControlsModal" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="${t.imageUrl}" class="carousel-imageModal" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="${t.hoverImageUrl}" class="carousel-imageModal" alt="...">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControlsModal" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControlsModal" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        `,s=`
            <div class="thumbnails-container">
                <img src="${t.imageUrl}" class="thumbnail-image" data-bs-target="#carouselExampleControlsModal" data-bs-slide-to="0" alt="...">
                <img src="${t.hoverImageUrl}" class="thumbnail-image" data-bs-target="#carouselExampleControlsModal" data-bs-slide-to="1" alt="...">
            </div>
        `,n=`
            <div class="product-infoModal">
                <h2>${t.name}</h2>
                <p>Precio: $${t.price} MXN</p>
                <div class="form-group">
                    <label for="sizeModal">Talla:</label>
                    <select id="sizeModal" class="form-select">
                        <option value="S">S</option>
                        <option value="M">M</option>
                        <option value="G">G</option>
                        <option value="XL">XL</option>
                        <option value="XXL">XXL</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="unitsModal">Cantidad:</label>
                    <input type="number" id="unitsModal" class="form-control" value="1" min="1">
                </div>
                <button id="add-to-cartModal" class="btn btn-primary">Agregar al Carrito</button>
            </div>
        `;l.innerHTML=`
            <div class="row">
                <div class="col-md-6">
                    ${i}
                    ${s}
                </div>
                <div class="col-md-6">
                    ${n}
                </div>
            </div>
        `,new bootstrap.Carousel(document.querySelector("#carouselExampleControlsModal"),{interval:5e3}),e.style.display="block",e.querySelector(".closeModal").addEventListener("click",function(){e.style.display="none"}),l.querySelector("#add-to-cartModal").addEventListener("click",function(){const d=document.getElementById("sizeModal").value,c=parseInt(document.getElementById("unitsModal").value);m(t,d,c),$("#confirmationModal").modal("show"),document.getElementById("sizeModal").value="S",document.getElementById("unitsModal").value="1"})}}document.addEventListener("DOMContentLoaded",function(){document.querySelector("#confirmationModal .btn-secondary").addEventListener("click",function(){$("#confirmationModal").modal("hide")}),document.querySelector("#confirmationModal #goToCartBtn").addEventListener("click",function(){window.location.href="../cart/cart.html"}),$("#confirmationModal").modal({show:!1})});const r=new g;function p(a){const e=`
       <div class="card" style="width: 20rem;">
    <div class="image-container">
        <img src="${a.imageUrl}" class="primary-image" alt="product image">
        <div class="hover-content">
            <img src="${a.hoverImageUrl}" class="hover-image" alt="hover image">
            <span class="modal-text" data-item='${JSON.stringify(a)}'>Ver más</span>
        </div>
    </div>
    <div class="card-body">
        <h4 class="card-title">${a.name}</h4>
        <p class="card-text">$${a.price} MXN</p>
    </div>
</div>

    `,l=document.getElementById("list-items");l.innerHTML+=e}function v(){if(!localStorage.getItem("items")){const a=[{name:"Body Damon",imageUrl:"/img/Body-Damon.jpg",hoverImageUrl:"/img/Body-Damon(2).jpg",price:799.99},{name:"Body Carmina",imageUrl:"/img/Body-Carmina.jpg",hoverImageUrl:"/img/Body-Carmina(2).jpg",price:799.99},{name:"Bustier Ale",imageUrl:"/img/Bustier-Ale.jpg",hoverImageUrl:"/img/Bustier-Ale(2).jpg",price:799.99},{name:"Set Angel",imageUrl:"/img/Set-Angel.jpg",hoverImageUrl:"/img/Set-Angel(2).jpg",price:799.99},{name:"Set Daniela",imageUrl:"/img/Set-Daniela.jpg",hoverImageUrl:"/img/Set-Daniela(2).jpg",price:799.99},{name:"Set Cordelia",imageUrl:"/img/Set-Cordelia.jpg",hoverImageUrl:"/img/Set-Cordelia(2).jpg",price:799.99},{name:"Set Vedette",imageUrl:"/img/Set-Vedette.jpg",hoverImageUrl:"/img/Set-Vedette(2).jpg",price:799.99},{name:"Set Catalina",imageUrl:"/img/Set-Catalina.jpg",hoverImageUrl:"/img/Set-Catalina(2).jpg",price:799.99},{name:"Set Florentina",imageUrl:"/img/Set-Florentina.jpg",hoverImageUrl:"/img/Set-Florentina(2).jpg",price:799.99},{name:"Set Susan",imageUrl:"/img/Set-Susan.jpg",hoverImageUrl:"/img/Set-Susan(2).jpg",price:799.99}];localStorage.setItem("items",JSON.stringify(a))}}function h(){r.getItems().forEach(e=>p(e))}v();r.loadItemsFromLocalStorage();h();u();
