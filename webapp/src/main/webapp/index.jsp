<h1> Hello, Welcome to Simple DevOps Project !!   </h1>
<h2> Deploying on a kubernetes using ansible for Valaxy Technologies </h2>
<h2> Glad to see you here </h2>
<h3> MODIFIED THE PAGE </h3>

<h1>Shopping Cart</h1>
{if #cart.updateForm.errors}
  <ul class="errors">
  {loop items="#cart.updateForm.errors" value="error"}
    <li>{#error.message}</li>
  {/loop}
  </ul>
{/if}
{#cart.updateForm.tag.open}
  <a href="{#cart.urls.continueShopping}" class="continue-shopping">Continue Shopping</a>
  <a href="{#cart.urls.checkout}" class="checkout-button">Checkout</a>
  <table cellspacing="0" class="shopping-cart">
    <thead>
      <tr class="headings">
        <th class="link">&nbsp;</td>
        <th class="product">Item</td>
        <th class="price">Price</td>
        <th class="quantity">Quantity</td>
        <th class="price">Total</td>
      </tr>
    </thead>
    <tbody>
    {loop items="#cart.products" value="product"}
      <tr> 
        <td class="link"><label>{#product.fields.remove.tag} remove</label></td>
        <td class="product">
          <div class="product-img"><a href="{#product.url}">{#product.primaryImages.thumb.tag}</a></div>
          <div class="product-name">
            <a href="{#product.url}">{#product.productName}</a>
            {loop items="#product.options" value="option"}
              <br />{#option.label}: {#option.value}
            {/loop}
          </div>
        </td>
        <td class="price">
          {#product.currentPrice.value}{if #product.pricePerUnit exists && #product.pricePerUnit != "None"} / {#product.pricePerUnit}{/if}
        </td>
        <td class="quantity">
          {#product.fields.quantity.tag}{#product.fields.partialQuantity.tag}
        </td>
        <td class="price">{#product.totalPrice.value}</td>
      </tr>
    {/loop} 
    {if #cart.coupons}
      <tr>
        <td class="quantity-span" colspan="4">Subtotal</td>
        <td class="price">{#cart.cartTotalBeforeDiscounts.value}</td>
      </tr>
      {loop items="#cart.coupons" value="coupon"}
        <tr>
          <td class="quantity-span" colspan="4">{#coupon.name} ({#coupon.code})</td>
          <td class="price">-{#coupon.savingsValue}</td>
        </tr>
      {/loop}
    {/if}
 
      <tr class="totals">
        <td colspan="2"><input type="submit" name="submit" value="Update cart" /></td>
        <td class="quantity-span" colspan="2">Total</td>
        <td class="price">{#cart.cartTotal.value}</td>
      </tr> 
    </tbody>
  </table>
{#cart.updateForm.tag.close}
{#cart.updateForm.tag.open}
  <div class="coupon">
    Have a coupon? {#cart.updateForm.fields.coupon.tag} <input type="submit" value="Apply" />
  </div>
{#cart.updateForm.tag.close}
<div style="clear: both;"></div>
<a href="{#cart.urls.continueShopping}" class="continue-shopping">Continue Shopping</a>
<a href="{#cart.urls.checkout}" class="checkout-button">Checkout</a>
