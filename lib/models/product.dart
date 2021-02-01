class Product {
  int id;
  String categoryId;
  String productName;
  String qantityPerUnit;
  double unitPrice;
  int unitsInStock;

  Product(this.id, this.categoryId, this.productName, this.qantityPerUnit,
      this.unitPrice, this.unitsInStock);

  Product.fromJson(Map json) {
    id = json["id"];
    categoryId = json["idcategoryId"];
    productName = json["productName"];
    qantityPerUnit = json["qantityPerUnit"];
    unitPrice = json["unitPrice"];
    unitsInStock = json["unitsInStock"];

    Map toJson() {
      return {
        "id": id,
        "categoryId": categoryId,
        "productName": productName,
        "qantityPerUnit": qantityPerUnit,
        "unitPrice": unitPrice,
        "unitsInStock": unitsInStock
      };
    }
  }
}