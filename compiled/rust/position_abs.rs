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
pub struct PositionAbs {
    pub _root: SharedType<PositionAbs>,
    pub _parent: SharedType<PositionAbs>,
    pub _self: SharedType<Self>,
    index_offset: RefCell<u32>,
    _io: RefCell<BytesReader>,
    f_index: Cell<bool>,
    index: RefCell<OptRc<PositionAbs_IndexObj>>,
}
impl KStruct for PositionAbs {
    type Root = PositionAbs;
    type Parent = PositionAbs;

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
        *self_rc.index_offset.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl PositionAbs {
    pub fn index(
        &self
    ) -> KResult<Ref<'_, OptRc<PositionAbs_IndexObj>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_index.get() {
            return Ok(self.index.borrow());
        }
        let _pos = _io.pos();
        _io.seek(*self.index_offset() as usize)?;
        let t = Self::read_into::<_, PositionAbs_IndexObj>(&*_io, Some(self._root.clone()), Some(self._self.clone()))?.into();
        *self.index.borrow_mut() = t;
        _io.seek(_pos)?;
        Ok(self.index.borrow())
    }
}
impl PositionAbs {
    pub fn index_offset(&self) -> Ref<'_, u32> {
        self.index_offset.borrow()
    }
}
impl PositionAbs {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct PositionAbs_IndexObj {
    pub _root: SharedType<PositionAbs>,
    pub _parent: SharedType<PositionAbs>,
    pub _self: SharedType<Self>,
    entry: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for PositionAbs_IndexObj {
    type Root = PositionAbs;
    type Parent = PositionAbs;

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
        *self_rc.entry.borrow_mut() = bytes_to_str(&_io.read_bytes_term(0, false, true, true)?.into(), "UTF-8")?;
        Ok(())
    }
}
impl PositionAbs_IndexObj {
}
impl PositionAbs_IndexObj {
    pub fn entry(&self) -> Ref<'_, String> {
        self.entry.borrow()
    }
}
impl PositionAbs_IndexObj {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
