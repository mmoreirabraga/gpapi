from model.area.area_intencao import AreaIntencao
from typing import List


def apresentacao_area(area:AreaIntencao):
    return {
        "id": area.id,
        "descricao": area.descricao
    }

def apresenta_areas(areas:List[AreaIntencao]):
    """ Retorna uma representação de areas de intenções

    """

    result = []

    for area in areas:
        result.append(apresentacao_area(area))

    return {"areasIntencoes": result}