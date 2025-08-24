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
use super::params_def_enum_imported::ParamsDefEnumImported;
use super::enum_import_seq::EnumImportSeq;

#[derive(Default, Debug, Clone)]
pub struct ImportsParamsDefEnumImported {
    pub _root: SharedType<ImportsParamsDefEnumImported>,
    pub _parent: SharedType<ImportsParamsDefEnumImported>,
    pub _self: SharedType<Self>,
    one: RefCell<OptRc<EnumImportSeq>>,
    two: RefCell<OptRc<ParamsDefEnumImported>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ImportsParamsDefEnumImported {
    type Root = ImportsParamsDefEnumImported;
    type Parent = ImportsParamsDefEnumImported;

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
        let t = Self::read_into::<_, EnumImportSeq>(&*_io, None, None)?.into();
        *self_rc.one.borrow_mut() = t;
        let f = |t : &mut ParamsDefEnumImported| Ok(t.set_params(&*self_rc.one().pet_1(), &*self_rc.one().pet_2()));
        let t = Self::read_into_with_init::<_, ParamsDefEnumImported>(&*_io, None, None, &f)?.into();
        *self_rc.two.borrow_mut() = t;
        Ok(())
    }
}
impl ImportsParamsDefEnumImported {
}
impl ImportsParamsDefEnumImported {
    pub fn one(&self) -> Ref<'_, OptRc<EnumImportSeq>> {
        self.one.borrow()
    }
}
impl ImportsParamsDefEnumImported {
    pub fn two(&self) -> Ref<'_, OptRc<ParamsDefEnumImported>> {
        self.two.borrow()
    }
}
impl ImportsParamsDefEnumImported {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
