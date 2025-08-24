// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#![allow(unused_imports)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(irrefutable_let_patterns)]
#![allow(unused_comparisons)]

extern crate kaitai;
use kaitai::*;
use std::convert::{TryFrom, TryInto};
use std::cell::{Ref, Cell, RefCell};
use std::rc::{Rc, Weak};
use super::enum_deep::EnumDeep_Container1_Container2_Animal;
use super::enum_0::Enum0_Animal;

#[derive(Default, Debug, Clone)]
pub struct ParamsDefEnumImported {
    pub _root: SharedType<ParamsDefEnumImported>,
    pub _parent: SharedType<ParamsDefEnumImported>,
    pub _self: SharedType<Self>,
    pet_1_param: RefCell<Enum0_Animal>,
    pet_2_param: RefCell<EnumDeep_Container1_Container2_Animal>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsDefEnumImported {
    type Root = ParamsDefEnumImported;
    type Parent = ParamsDefEnumImported;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        Ok(())
    }
}
impl ParamsDefEnumImported {
    pub fn pet_1_param(&self) -> Ref<'_, Enum0_Animal> {
        self.pet_1_param.borrow()
    }
}
impl ParamsDefEnumImported {
    pub fn pet_2_param(&self) -> Ref<'_, EnumDeep_Container1_Container2_Animal> {
        self.pet_2_param.borrow()
    }
}
impl ParamsDefEnumImported {
    pub fn set_params(&mut self, pet_1_param: &Enum0_Animal, pet_2_param: &EnumDeep_Container1_Container2_Animal) {
        *self.pet_1_param.borrow_mut() = pet_1_param.clone();
        *self.pet_2_param.borrow_mut() = pet_2_param.clone();
    }
}
impl ParamsDefEnumImported {
}
impl ParamsDefEnumImported {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
