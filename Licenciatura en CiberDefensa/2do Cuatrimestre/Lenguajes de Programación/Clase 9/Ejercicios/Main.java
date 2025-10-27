import java.util.ArrayList;

// ---------- CLASE BASE ----------
abstract class Producto {
    private int id;
    private String nombre;
    private float precio;

    public Producto(int id, String nombre, float precio) {
        this.id = id;
        this.nombre = nombre;
        this.precio = precio;
    }

    public int getId() { return id; }
    public String getNombre() { return nombre; }
    public float getPrecio() { return precio; }

    public void setNombre(String nombre) { this.nombre = nombre; }
    public void setPrecio(float precio) { this.precio = precio; }

    // Método abstracto para que cada tipo de producto muestre su info específica
    public abstract void mostrarProducto();
}

// ---------- PRODUCTO FiSICO ----------
class ProductoFisico extends Producto {
    private float peso;

    public ProductoFisico(int id, String nombre, float precio, float peso) {
        super(id, nombre, precio);
        this.peso = peso;
    }

    public float getPeso() { return peso; }

    @Override
    public void mostrarProducto() {
        System.out.println("📦 Producto Físico: " + getNombre() +
                " | Precio: $" + getPrecio() +
                " | Peso: " + peso + " kg");
    }
}

// ---------- PRODUCTO DIGITAL ----------
class ProductoDigital extends Producto {
    private String codigoLicencia;
    private String urlDescarga;

    public ProductoDigital(int id, String nombre, float precio, String codigoLicencia, String urlDescarga) {
        super(id, nombre, precio);
        this.codigoLicencia = codigoLicencia;
        this.urlDescarga = urlDescarga;
    }

    public String getCodigoLicencia() { return codigoLicencia; }
    public String getUrlDescarga() { return urlDescarga; }

    @Override
    public void mostrarProducto() {
        System.out.println("💾 Producto Digital: " + getNombre() +
                " | Precio: $" + getPrecio() +
                " | Licencia: " + codigoLicencia +
                " | URL: " + urlDescarga);
    }
}

// ---------- ITEM CARRITO ----------
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
    public Producto getProducto() { return producto; }
    public int getCantidad() { return cantidad; }

    public void incrementarCantidad() {
        cantidad++;
        subtotal = calcularSubtotal();
    }

    public void mostrarItem() {
        System.out.println("- " + producto.getNombre() + " x" + cantidad + " -> $" + subtotal);
    }
}

// ---------- CARRITO ----------
class Carrito {
    private ArrayList<ItemCarrito> items;

    public Carrito() {
        items = new ArrayList<>();
    }

    public void agregarProducto(Producto producto, int cantidad) {
        for (ItemCarrito item : items) {
            if (item.getProducto().getNombre().equals(producto.getNombre())) {
                item.incrementarCantidad();
                return;
            }
        }
        items.add(new ItemCarrito(producto, cantidad));
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

    public float pesoTotal() {
        float pesoTotal = 0;
        for (ItemCarrito item : items) {
            if (item.getProducto() instanceof ProductoFisico) {
                ProductoFisico p = (ProductoFisico) item.getProducto();
                pesoTotal += p.getPeso() * item.getCantidad();
            }
        }
        return pesoTotal;
    }

    public void mostrarCarrito() {
        System.out.println("\n🛒 Carrito de compras:");
        if (items.isEmpty()) {
            System.out.println("Carrito vacío.");
        } else {
            for (ItemCarrito item : items) {
                item.mostrarItem();
            }
            System.out.println("Total: $" + total());
            System.out.println("Peso total (solo productos físicos): " + pesoTotal() + " kg");
        }
    }
}

// ---------- USUARIO ----------
class Usuario {
    private String nombre;
    private String email;
    private Carrito carrito;

    public Usuario(String nombre, String email) {
        this.nombre = nombre;
        this.email = email;
        this.carrito = null;
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

// ---------- MAIN ----------
public class Main {
    public static void main(String[] args) {
        // Crear productos
        ProductoFisico p1 = new ProductoFisico(1, "Mouse", 45000.99f, 0.3f);
        ProductoFisico p2 = new ProductoFisico(2, "Teclado", 75000.70f, 0.8f);
        ProductoDigital p3 = new ProductoDigital(3, "Antivirus", 120000.00f, "LIC-XYZ-1234", "www.descarga.com/antivirus");

        // Mostrar productos
        p1.mostrarProducto();
        p2.mostrarProducto();
        p3.mostrarProducto();

        // Usuario y operaciones
        Usuario usuario = new Usuario("Ana", "ana@example.com");
        usuario.verCarrito();
        usuario.iniciarCarrito();
        usuario.agregarAlCarrito(p1, 1);
        usuario.agregarAlCarrito(p2, 2);
        usuario.agregarAlCarrito(p3, 1);
        usuario.verCarrito();
        usuario.finalizarCompra();
    }
}
