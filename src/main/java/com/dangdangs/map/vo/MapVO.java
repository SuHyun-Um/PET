package com.dangdangs.map.vo;

public class MapVO {
   

   private int mapx, mapy, id;
   private String title, link, category, telephone, address, roadAddress;
   /**
    * @return the mapx
    */
   public int getMapx() {
      return mapx;
   }
   /**
    * @param mapx the mapx to set
    */
   public void setMapx(int mapx) {
      this.mapx = mapx;
   }
   /**
    * @return the mapy
    */
   public int getMapy() {
      return mapy;
   }
   /**
    * @param mapy the mapy to set
    */
   public void setMapy(int mapy) {
      this.mapy = mapy;
   }
   /**
    * @return the id
    */
   public int getId() {
      return id;
   }
   /**
    * @param id the id to set
    */
   public void setId(int id) {
      this.id = id;
   }
   /**
    * @return the title
    */
   public String getTitle() {
      return title;
   }
   /**
    * @param title the title to set
    */
   public void setTitle(String title) {
      this.title = title;
   }
   /**
    * @return the link
    */
   public String getLink() {
      return link;
   }
   /**
    * @param link the link to set
    */
   public void setLink(String link) {
      this.link = link;
   }
   /**
    * @return the category
    */
   public String getCategory() {
      return category;
   }
   /**
    * @param category the category to set
    */
   public void setCategory(String category) {
      this.category = category;
   }
   /**
    * @return the telephone
    */
   public String getTelephone() {
      return telephone;
   }
   /**
    * @param telephone the telephone to set
    */
   public void setTelephone(String telephone) {
      this.telephone = telephone;
   }
   /**
    * @return the address
    */
   public String getAddress() {
      return address;
   }
   /**
    * @param address the address to set
    */
   public void setAddress(String address) {
      this.address = address;
   }
   /**
    * @return the roadAddress
    */
   public String getRoadAddress() {
      return roadAddress;
   }
   /**
    * @param roadAddress the roadAddress to set
    */
   public void setRoadAddress(String roadAddress) {
      this.roadAddress = roadAddress;
   }
   @Override
   public String toString() {
      return "MapVO [mapx=" + mapx + ", mapy=" + mapy + ", id=" + id + ", title=" + title + ", link=" + link
            + ", category=" + category + ", telephone=" + telephone + ", address=" + address + ", roadAddress="
            + roadAddress + "]";
   }
   

   
}