describe('The Home page', () => {
  beforeEach(() => {
    cy.visit('http://0.0.0.0:3000')
  })

  xit("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

  xit("There is 12 products on the page", () => {
    cy.get(".products article").should("have.length", 12);
  });


});