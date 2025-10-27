/******************************************************************************

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, OCaml, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/
import java.util.ArrayList;


class Producto {
    private int id;
    private String nombre;
    private float precio;
    private int stock;

    public Producto(int id, String nombre, float precio, int stock) {
        this.id = id;
        this.nombre = nombre;
        this.precio = precio;
        this.stock = stock;
    }

    public int getId() { return id; }
    public String getNombre() { return nombre; }
    public float getPrecio() { return precio; }
    public int getStock() { return stock; }

    public void setPrecio(float precio) { this.precio = precio; }
    public void setStock(int stock) { this.stock = stock; }
    public void setNombre(String nombre) { this.nombre = nombre; }

    public void mostrarProducto() {
        System.out.println("Producto: " + nombre + ", Precio: $" + precio + ", Stock: " + stock);
    }
}

class ItemCarrito {
    private Producto producto;
    private int cantidad;
    private float subtotal;

    public ItemCarrito(Producto producto, int cantidad) {
        this.producto = producto;
        this.cantidad = cantidad;
        this.subtotal = calcularSubtotal();
    }

    private float calcularSubtotal() {
        return producto.getPrecio() * cantidad;
    }

    public float getSubtotal() { return subtotal; }
    public void incrementarCantidad() {
        cantidad++;
        subtotal = calcularSubtotal();
    }

    public int getCantidad() { return cantidad; }
    public String getProducto() { return producto.getNombre(); }

    public void mostrarItem() {
        System.out.println("- " + producto.getNombre() + " x" + cantidad + " -> $" + subtotal);
    }
}


class Carrito {
    private ArrayList<ItemCarrito> items;

    public Carrito() {
        items = new ArrayList<>();
    }

    public void agregarProducto(Producto producto, int cantidad) {
        for (ItemCarrito item : items) {
            if (item.getProducto().equals(producto.getNombre())) {
                // Si ya está, incrementa cantidad
                item.incrementarCantidad();
                return;
            }
        }
        items.add(new ItemCarrito(producto, cantidad));
    }

    public void eliminarProducto(Producto producto) {
        items.removeIf(item -> item.getProducto().equals(producto.getNombre()));
    }

    public void vaciarCarrito() {
        items.clear();
    }

    public float total() {
        float total = 0;
        for (ItemCarrito item : items) {
            total += item.getSubtotal();
        }
        return total;
    }

    public void mostrarCarrito() {
        System.out.println("🛒 Carrito de compras:");
        if (items.isEmpty()) {
            System.out.println("Carrito vacío.");
        } else {
            for (ItemCarrito item : items) {
                item.mostrarItem();
            }
            System.out.println("Total: $" + total());
        }
    }
}

class Usuario {
    private String nombre;
    private String email;
    private Carrito carrito;

    public Usuario(String nombre, String email) {
        this.nombre = nombre;
        this.email = email;
        this.carrito = null; // No tiene carrito al inicio
    }

    public void iniciarCarrito() {
        if (carrito == null) {
            carrito = new Carrito();
            System.out.println("🛒 Carrito iniciado para " + nombre);
        } else {
            System.out.println("Ya tienes un carrito activo.");
        }
    }

    public void agregarAlCarrito(Producto producto, int cantidad) {
        if (carrito == null) {
            System.out.println("Debes iniciar tu carrito primero.");
        } else {
            carrito.agregarProducto(producto, cantidad);
        }
    }

    public void verCarrito() {
        if (carrito != null) {
            carrito.mostrarCarrito();
        } else {
            System.out.println("No tienes un carrito activo.");
        }
    }

    public void finalizarCompra() {
        if (carrito != null) {
            System.out.println("Compra finalizada. Total a pagar: $" + carrito.total());
            carrito.vaciarCarrito();
        } else {
            System.out.println("No se puede finalizar una compra sin carrito.");
        }
    }
}

public class Main
{
	public static void main(String[] args) {
	    Producto prod1 = new Producto(1, "Mouse", 45000.99f, 10);
        Producto prod2 = new Producto(2, "Teclado", 75000.70f, 5);
        Producto prod3 = new Producto(1, "Memoria USB", 120000.00f, 5);

        prod1.mostrarProducto();
        prod2.mostrarProducto();
        prod3.mostrarProducto();
        // Cambiamos el stock del producto 1
        prod1.setStock(8);
        System.out.println("Stock actualizado de " + prod1.getNombre() + ": " + prod1.getStock());
        
        Usuario usuario = new Usuario("Ana", "ana@example.com");
        usuario.verCarrito(); // No tiene aún
        usuario.iniciarCarrito();
        usuario.agregarAlCarrito(prod1, 1);
        usuario.agregarAlCarrito(prod2, 2);
        usuario.verCarrito();
        usuario.agregarAlCarrito(prod1, 3);
        usuario.verCarrito();
        usuario.finalizarCompra();
        
	}
}
