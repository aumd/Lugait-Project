package LugaitSituationalAnalysis



import org.junit.*
import grails.test.mixin.*

@TestFor(ResidentController)
@Mock(Resident)
class ResidentControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/resident/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.residentInstanceList.size() == 0
        assert model.residentInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.residentInstance != null
    }

    void testSave() {
        controller.save()

        assert model.residentInstance != null
        assert view == '/resident/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/resident/show/1'
        assert controller.flash.message != null
        assert Resident.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/resident/list'

        populateValidParams(params)
        def resident = new Resident(params)

        assert resident.save() != null

        params.id = resident.id

        def model = controller.show()

        assert model.residentInstance == resident
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/resident/list'

        populateValidParams(params)
        def resident = new Resident(params)

        assert resident.save() != null

        params.id = resident.id

        def model = controller.edit()

        assert model.residentInstance == resident
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/resident/list'

        response.reset()

        populateValidParams(params)
        def resident = new Resident(params)

        assert resident.save() != null

        // test invalid parameters in update
        params.id = resident.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/resident/edit"
        assert model.residentInstance != null

        resident.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/resident/show/$resident.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        resident.clearErrors()

        populateValidParams(params)
        params.id = resident.id
        params.version = -1
        controller.update()

        assert view == "/resident/edit"
        assert model.residentInstance != null
        assert model.residentInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/resident/list'

        response.reset()

        populateValidParams(params)
        def resident = new Resident(params)

        assert resident.save() != null
        assert Resident.count() == 1

        params.id = resident.id

        controller.delete()

        assert Resident.count() == 0
        assert Resident.get(resident.id) == null
        assert response.redirectedUrl == '/resident/list'
    }
}
