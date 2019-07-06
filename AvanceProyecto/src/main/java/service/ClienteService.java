package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.Cliente;
import mybatis.MyBatisUtil;
import mybatis.mapper.ClienteMapper;

public class ClienteService {
	public List<Cliente> listado(){
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<Cliente> lista = null;
		
		try {
			ClienteMapper pm = session.getMapper(ClienteMapper.class);
			lista = pm.listadoClientes();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return lista;
	}
	
	public int registrar(Cliente p) {
		int ok = 0;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try {
			ClienteMapper pm = session.getMapper(ClienteMapper.class);
			ok = pm.registrarCliente(p);
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
			ClienteMapper pm = session.getMapper(ClienteMapper.class);
			ok = pm.eliminarCliente(codigo);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return ok;
	}

}
