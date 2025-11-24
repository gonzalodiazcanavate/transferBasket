import React from "react";
import {Radar, RadarChart, PolarGrid, PolarAngleAxis, PolarRadiusAxis} from "recharts";
import {createPayload} from "../helpers/statsChart.helper";

const StatsChart = ({player}) => {

  const data = createPayload(player);
  return (
    <RadarChart
      style={{width: "100%", height: "100%", maxWidth: "500px", maxHeight: "80vh", aspectRatio: 1}}
      responsive
      outerRadius="80%"
      data={data}
      margin={{
        top: 20,
        left: 20,
        right: 20,
        bottom: 20,
      }}
    >
      <PolarGrid />
      <PolarAngleAxis dataKey="stat" />
      <PolarRadiusAxis />
      <Radar name={player.name} dataKey="value" stroke="#8884d8" fill="#8884d8" fillOpacity={0.6} />
    </RadarChart>
  );
};

export default StatsChart;