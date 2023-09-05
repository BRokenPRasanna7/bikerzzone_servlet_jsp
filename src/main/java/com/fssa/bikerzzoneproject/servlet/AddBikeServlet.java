package com.fssa.bikerzzoneproject.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.bikerzzone.exceptions.DAOException;
import com.fssa.bikerzzone.model.Bike;
import com.fssa.bikerzzone.service.BikeService;

/**
 * Servlet implementation class AddBikeServlet
 */
@WebServlet("/AddBikeServlet")
public class AddBikeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddBikeServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/add-bike.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Get bike details from form inputs
//		long id = Long.parseLong(request.getParameter("id"));
		String brand = request.getParameter("brand");
		System.out.println(brand);
		String model = request.getParameter("model");
		double price = Double.parseDouble(request.getParameter("price"));
		String ownership = request.getParameter("ownership");
		String location = request.getParameter("location");
		LocalDate manufactureDate = LocalDate.parse(request.getParameter("manufactureDate"));
//		String color = request.getParameter("color");
//		String description = request.getParameter("description");
//		double weight = Double.parseDouble(request.getParameter("weight"));
//		String engine = request.getParameter("engine");
//		double mileage = Double.parseDouble(request.getParameter("mileage"));
//		String power = request.getParameter("power");
//		String maxPower = request.getParameter("maxPower");
//		String transmission = request.getParameter("transmission");
//		double fuelCapacity = Double.parseDouble(request.getParameter("fuelCapacity"));
//		String torque = request.getParameter("torque");
//		String imageUrl1 = request.getParameter("imageUrl1");
//		String imageUrl2 = request.getParameter("imageUrl2");
//		String imageUrl3 = request.getParameter("imageUrl3");

		// Create a Bike object and set its attributes
		Bike bike = new Bike(brand, model, price, ownership, location, manufactureDate);
//		bike.setColor(color);
//		bike.setDescription(description);
//		bike.setWeight(weight);
//		bike.setEngine(engine);
//		bike.setMileage(mileage);
//		bike.setPower(power);
//		bike.setMaxPower(maxPower);
//		bike.setTransmission(transmission);
//		bike.setFuelCapacity(fuelCapacity);
//		bike.setTorque(torque);
//		bike.setImageUrl1(imageUrl1);
//		bike.setImageUrl2(imageUrl2);
//		bike.setImageUrl3(imageUrl3);

		try {
			BikeService.addBike(bike);
		} catch (DAOException | SQLException e) {

			e.printStackTrace();
		}

		response.sendRedirect("LoginServlet?brandName=" + brand );
	}

}
