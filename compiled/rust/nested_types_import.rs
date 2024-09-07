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
use super::nested_types3::NestedTypes3_SubtypeA_SubtypeCc;
use super::nested_types3::NestedTypes3_SubtypeB;
use super::nested_types3::NestedTypes3_SubtypeA_SubtypeC_SubtypeD;

#[derive(Default, Debug, Clone)]
pub struct NestedTypesImport {
    pub _root: SharedType<NestedTypesImport>,
    pub _parent: SharedType<NestedTypesImport>,
    pub _self: SharedType<Self>,
    a_cc: RefCell<OptRc<NestedTypes3_SubtypeA_SubtypeCc>>,
    a_c_d: RefCell<OptRc<NestedTypes3_SubtypeA_SubtypeC_SubtypeD>>,
    b: RefCell<OptRc<NestedTypes3_SubtypeB>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedTypesImport {
    type Root = NestedTypesImport;
    type Parent = NestedTypesImport;

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
        let t = Self::read_into::<_, NestedTypes3_SubtypeA_SubtypeCc>(&*_io, None, None)?.into();
        *self_rc.a_cc.borrow_mut() = t;
        let t = Self::read_into::<_, NestedTypes3_SubtypeA_SubtypeC_SubtypeD>(&*_io, None, None)?.into();
        *self_rc.a_c_d.borrow_mut() = t;
        let t = Self::read_into::<_, NestedTypes3_SubtypeB>(&*_io, None, None)?.into();
        *self_rc.b.borrow_mut() = t;
        Ok(())
    }
}
impl NestedTypesImport {
}
impl NestedTypesImport {
    pub fn a_cc(&self) -> Ref<OptRc<NestedTypes3_SubtypeA_SubtypeCc>> {
        self.a_cc.borrow()
    }
}
impl NestedTypesImport {
    pub fn a_c_d(&self) -> Ref<OptRc<NestedTypes3_SubtypeA_SubtypeC_SubtypeD>> {
        self.a_c_d.borrow()
    }
}
impl NestedTypesImport {
    pub fn b(&self) -> Ref<OptRc<NestedTypes3_SubtypeB>> {
        self.b.borrow()
    }
}
impl NestedTypesImport {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
