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

#[derive(Default, Debug, Clone)]
pub struct IfValues {
    pub _root: SharedType<IfValues>,
    pub _parent: SharedType<IfValues>,
    pub _self: SharedType<Self>,
    codes: RefCell<Vec<OptRc<IfValues_Code>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for IfValues {
    type Root = IfValues;
    type Parent = IfValues;

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
        *self_rc.codes.borrow_mut() = Vec::new();
        let l_codes = 3;
        for _i in 0..l_codes {
            let t = Self::read_into::<_, IfValues_Code>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            self_rc.codes.borrow_mut().push(t);
        }
        Ok(())
    }
}
impl IfValues {
}
impl IfValues {
    pub fn codes(&self) -> Ref<Vec<OptRc<IfValues_Code>>> {
        self.codes.borrow()
    }
}
impl IfValues {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct IfValues_Code {
    pub _root: SharedType<IfValues>,
    pub _parent: SharedType<IfValues>,
    pub _self: SharedType<Self>,
    opcode: RefCell<u8>,
    _io: RefCell<BytesReader>,
    f_half_opcode: Cell<bool>,
    half_opcode: RefCell<i32>,
}
impl KStruct for IfValues_Code {
    type Root = IfValues;
    type Parent = IfValues;

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
        *self_rc.opcode.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl IfValues_Code {
    pub fn half_opcode(
        &self
    ) -> KResult<Ref<i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_half_opcode.get() {
            return Ok(self.half_opcode.borrow());
        }
        self.f_half_opcode.set(true);
        if ((((*self.opcode() as u8) % (2 as u8)) as i32) == (0 as i32)) {
            *self.half_opcode.borrow_mut() = (((*self.opcode() as u8) / (2 as u8))) as i32;
        }
        Ok(self.half_opcode.borrow())
    }
}
impl IfValues_Code {
    pub fn opcode(&self) -> Ref<u8> {
        self.opcode.borrow()
    }
}
impl IfValues_Code {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
