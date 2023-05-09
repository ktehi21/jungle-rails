describe('The detail product page', () => {
  beforeEach(() => {
    cy.visit('http://0.0.0.0:3000')
  })

  xit("I can visit detail product page on the page", () => {

    cy.get(".products article:eq(0)").click()
    .then(() => {
      cy.get(".products-show").should("be.visible")
    })
  });

});