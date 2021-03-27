<div class="images">
  {if #product.primaryImages.medium}
    <div id="product-img">
      {if #product.primaryImages.large}
         <a href="{#product.primaryImages.large.srcValue}" rel="lightbox[slides]" title="{#product.productName}">
           {#product.primaryImages.medium.tag}
         </a>
        <div id="product-img-zoom">
           <a href="{#product.primaryImages.large.srcValue}" rel="lightbox" title="{#product.productName}">
             Click to view larger
           </a>
         </div>
       {else}
        {#product.primaryImages.medium.tag}
      {/if}
    </div>
    <div class="additional-images">
      {loop items="#product.additionalImages" value="images"}
        <a href="{#images.imageSet.largeImage.srcValue}" rel="lightbox[slides]" title="{#product.productName}">
          <img src="{#images.imageSet.smallImage.srcValue}" />
        </a>
      {/loop}
    </div>
  {/if}
</div>
<div id="product-details">
    <h1>{#product.productName}</h1>
    <p>{#product.subcaption}</p>
    {#product.orderForm.tag.open}
      <div id="product-price">
        {if #product.orderingOptionsChangePrice}Starting at {/if}
        {#product.currentPrice.value}
        {if #product.pricePerUnit exists && #product.pricePerUnit != "None"} / {#product.pricePerUnit}{/if}
      </div>
      {#product.orderForm.fields.quantity.tag} 
      {#product.orderForm.fields.partialQuantity.tag}
      <input type="submit" name="submit" value="Add to Cart" />
    {#product.orderForm.tag.close}
    {#product.description}
    <b>SKU: {#product.sku}</b>
</div>
