package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.Producto;
import mybatis.MyBatisUtil;
import mybatis.mapper.ProductoMapper;

public class ProductoService {

	public List<Producto> listado(){
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<Producto> lista = null;
		
		try {
			ProductoMapper pm = session.getMapper(ProductoMapper.class);
			lista = pm.listadoProducto();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return lista;
	}
	
	public int registrar(Producto p) {
		int ok = 0;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try {
			ProductoMapper pm = session.getMapper(ProductoMapper.class);
			ok = pm.registrarProducto(p);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return ok;
	}
	
	public int eliminar(int codigo) {
		int ok = 0;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try {
			ProductoMapper pm = session.getMapper(ProductoMapper.class);
			ok = pm.eliminarProducto(codigo);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return ok;
	}
}
