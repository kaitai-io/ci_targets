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
pub struct PositionToEnd {
    pub _root: SharedType<PositionToEnd>,
    pub _parent: SharedType<PositionToEnd>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
    f_index: Cell<bool>,
    index: RefCell<OptRc<PositionToEnd_IndexObj>>,
}
impl KStruct for PositionToEnd {
    type Root = PositionToEnd;
    type Parent = PositionToEnd;

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
impl PositionToEnd {
    pub fn index(
        &self
    ) -> KResult<Ref<OptRc<PositionToEnd_IndexObj>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_index.get() {
            return Ok(self.index.borrow());
        }
        let _pos = _io.pos();
        _io.seek(((_io.size() as i32) - (8 as i32)) as usize)?;
        let t = Self::read_into::<_, PositionToEnd_IndexObj>(&*_io, Some(self._root.clone()), Some(self._self.clone()))?.into();
        *self.index.borrow_mut() = t;
        _io.seek(_pos)?;
        Ok(self.index.borrow())
    }
}
impl PositionToEnd {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct PositionToEnd_IndexObj {
    pub _root: SharedType<PositionToEnd>,
    pub _parent: SharedType<PositionToEnd>,
    pub _self: SharedType<Self>,
    foo: RefCell<u32>,
    bar: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for PositionToEnd_IndexObj {
    type Root = PositionToEnd;
    type Parent = PositionToEnd;

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
        *self_rc.foo.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.bar.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl PositionToEnd_IndexObj {
}
impl PositionToEnd_IndexObj {
    pub fn foo(&self) -> Ref<u32> {
        self.foo.borrow()
    }
}
impl PositionToEnd_IndexObj {
    pub fn bar(&self) -> Ref<u32> {
        self.bar.borrow()
    }
}
impl PositionToEnd_IndexObj {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
