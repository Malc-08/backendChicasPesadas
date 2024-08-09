function L(n,o,a){let e=JSON.parse(localStorage.getItem("cart"))||[],t=!1;e.forEach(i=>{i.item.name===n.name&&i.size===o&&(i.quantity+=a,t=!0)}),t||e.push({item:n,size:o,quantity:a}),localStorage.setItem("cart",JSON.stringify(e)),setTimeout(()=>{d()},100)}function d(){const n=document.getElementById("cart-items"),o=document.getElementById("cart-total");if(!n||!o)return;let a=JSON.parse(localStorage.getItem("cart"))||[];n.innerHTML=`
        <div class="table-responsive">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th colspan="2">Producto</th>
                        <th>Talla</th>
                        <th class="total-column">Precio unitario</th>
                        <th>Cantidad</th>
                        <th class="total-column">Total</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    `;const e=n.querySelector("tbody");if(o.innerHTML="",a.length===0)e.innerHTML="<tr><td colspan='5'>El carrito está vacío.</td></tr>";else{a.forEach(m=>{const{item:c,size:s,quantity:u}=m,p=c.price*u,g=`
                <tr>
                    <td><img src="${c.imageUrl}" alt="${c.name}" class="card-img w-100"></td>
                    <td><h6 class="card-title">${c.name}</h6></td>
                    <td><select class="form-control update-size" data-name="${c.name}" data-size="${s}">
                                    <option value="S" ${s==="S"?"selected":""}>S</option>
                                    <option value="M" ${s==="M"?"selected":""}>M</option>
                                    <option value="L" ${s==="L"?"selected":""}>L</option>
                                    <option value="XL" ${s==="XL"?"selected":""}>XL</option>
                                    <option value="XXL" ${s==="XXL"?"selected":""}>XXL</option>
                                </select></td>
                    <td>$${c.price.toLocaleString("es-MX",{minimumFractionDigits:2,maximumFractionDigits:2})} MXN</td>
                    <td><input type="number" class="form-control update-quantity" value="${u}" data-name="${c.name}" data-size="${s}" min="1"></td>
                    <td>$${p.toLocaleString("es-MX",{minimumFractionDigits:2,maximumFractionDigits:2})} MXN</td>
                    <td><button class="btn-sm remove-from-cart" data-name="${c.name}" data-size="${s}">
                         <i class="fas fa-trash-alt"></i>
                    </button></td>
                </tr>
            `;e.insertAdjacentHTML("beforeend",g)});const t=a.reduce((m,{item:c,quantity:s})=>m+c.price*s,0),i=t>=1599?0:99,r=t+i,l=`
            <div class="card mb-3">
                <div class="card-body cart-total-container">
                    <h4>Resumen del pedido</h4>
                    <p><span>Subtotal:</span> <span>$${t.toLocaleString("es-MX",{minimumFractionDigits:2,maximumFractionDigits:2})} MXN</span></p>
                    <p><span>Envío:</span> <span>$${i.toLocaleString("es-MX",{minimumFractionDigits:2,maximumFractionDigits:2})} MXN</span></p>
                    <div class="cart-total-separator"></div>
                    <p><span>Total del carrito:</span> <span>$${r.toLocaleString("es-MX",{minimumFractionDigits:2,maximumFractionDigits:2})} MXN</span></p>
                    <button id="proceed-to-checkout" class="btn btn-primary mt-4">Proceder al Pago</button>
                </div>
            </div>
        `;o.innerHTML=l}S()}function S(){document.querySelectorAll(".remove-from-cart").forEach(t=>{t.addEventListener("click",function(){const i=t.dataset.name,r=t.dataset.size;f(i,r)})}),document.querySelectorAll(".update-quantity").forEach(t=>{t.addEventListener("change",function(){const i=t.dataset.name,r=t.dataset.size,l=parseInt(t.value);h(i,r,l)})}),document.querySelectorAll(".update-size").forEach(t=>{t.addEventListener("change",function(){const i=t.dataset.name,r=t.dataset.size,l=t.value;v(i,r,l)})});const e=document.getElementById("proceed-to-checkout");e&&e.addEventListener("click",function(){window.location.href="checkout.html"})}function f(n,o){let a=JSON.parse(localStorage.getItem("cart"))||[];a=a.filter(e=>!(e.item.name===n&&e.size===o)),localStorage.setItem("cart",JSON.stringify(a)),d()}function h(n,o,a){let e=JSON.parse(localStorage.getItem("cart"))||[];e.forEach(t=>{t.item.name===n&&t.size===o&&(t.quantity=a)}),localStorage.setItem("cart",JSON.stringify(e)),d()}function v(n,o,a){let e=JSON.parse(localStorage.getItem("cart"))||[];e.forEach(t=>{t.item.name===n&&t.size===o&&(t.size=a)}),localStorage.setItem("cart",JSON.stringify(e)),d()}document.addEventListener("DOMContentLoaded",d);export{L as a};
