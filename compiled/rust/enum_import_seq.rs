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
pub struct EnumImportSeq {
    pub _root: SharedType<EnumImportSeq>,
    pub _parent: SharedType<EnumImportSeq>,
    pub _self: SharedType<Self>,
    pet_1: RefCell<Enum0_Animal>,
    pet_2: RefCell<EnumDeep_Container1_Container2_Animal>,
    _io: RefCell<BytesReader>,
}
impl KStruct for EnumImportSeq {
    type Root = EnumImportSeq;
    type Parent = EnumImportSeq;

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
        *self_rc.pet_1.borrow_mut() = (_io.read_u4le()? as i64).try_into()?;
        *self_rc.pet_2.borrow_mut() = (_io.read_u4le()? as i64).try_into()?;
        Ok(())
    }
}
impl EnumImportSeq {
}
impl EnumImportSeq {
    pub fn pet_1(&self) -> Ref<'_, Enum0_Animal> {
        self.pet_1.borrow()
    }
}
impl EnumImportSeq {
    pub fn pet_2(&self) -> Ref<'_, EnumDeep_Container1_Container2_Animal> {
        self.pet_2.borrow()
    }
}
impl EnumImportSeq {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
