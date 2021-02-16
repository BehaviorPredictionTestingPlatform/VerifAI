import scenic

param map = localPath('tests/Town01.xodr')
param carla_map = 'Town01'
param verifaiSamplerType = 'mab'

model scenic.domains.driving.model

simulator scenic.core.simulators.DummySimulator()

ego = Car at VerifaiRange(-5, 5) @ 2, with behavior FollowLaneBehavior
car1 = Car at VerifaiRange(-5, 5) @ -2
