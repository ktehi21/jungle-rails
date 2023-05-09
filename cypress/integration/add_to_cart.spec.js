describe('The detail product page', () => {
  beforeEach(() => {
    cy.visit('http://0.0.0.0:3000')
  })

  it("I can click the add button to to order", () => {

    cy.get(".products article:eq(1) .btn")
    .contains("Add").click({force: true});

    cy.get(".navbar-nav")
      .contains("My Cart (1)")
      .should("be.visible", { timeout: 5000 });
    });

});