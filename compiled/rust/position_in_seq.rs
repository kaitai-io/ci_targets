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
pub struct PositionInSeq {
    pub _root: SharedType<PositionInSeq>,
    pub _parent: SharedType<PositionInSeq>,
    pub _self: SharedType<Self>,
    numbers: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
    f_header: Cell<bool>,
    header: RefCell<OptRc<PositionInSeq_HeaderObj>>,
}
impl KStruct for PositionInSeq {
    type Root = PositionInSeq;
    type Parent = PositionInSeq;

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
        *self_rc.numbers.borrow_mut() = Vec::new();
        let l_numbers = *self_rc.header()?.qty_numbers();
        for _i in 0..l_numbers {
            self_rc.numbers.borrow_mut().push(_io.read_u1()?.into());
        }
        Ok(())
    }
}
impl PositionInSeq {
    pub fn header(
        &self
    ) -> KResult<Ref<OptRc<PositionInSeq_HeaderObj>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_header.get() {
            return Ok(self.header.borrow());
        }
        let _pos = _io.pos();
        _io.seek(16 as usize)?;
        let t = Self::read_into::<_, PositionInSeq_HeaderObj>(&*_io, Some(self._root.clone()), Some(self._self.clone()))?.into();
        *self.header.borrow_mut() = t;
        _io.seek(_pos)?;
        Ok(self.header.borrow())
    }
}
impl PositionInSeq {
    pub fn numbers(&self) -> Ref<Vec<u8>> {
        self.numbers.borrow()
    }
}
impl PositionInSeq {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct PositionInSeq_HeaderObj {
    pub _root: SharedType<PositionInSeq>,
    pub _parent: SharedType<PositionInSeq>,
    pub _self: SharedType<Self>,
    qty_numbers: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for PositionInSeq_HeaderObj {
    type Root = PositionInSeq;
    type Parent = PositionInSeq;

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
        *self_rc.qty_numbers.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl PositionInSeq_HeaderObj {
}
impl PositionInSeq_HeaderObj {
    pub fn qty_numbers(&self) -> Ref<u32> {
        self.qty_numbers.borrow()
    }
}
impl PositionInSeq_HeaderObj {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
