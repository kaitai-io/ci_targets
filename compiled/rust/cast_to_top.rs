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
pub struct CastToTop {
    pub _root: SharedType<CastToTop>,
    pub _parent: SharedType<CastToTop>,
    pub _self: SharedType<Self>,
    code: RefCell<u8>,
    _io: RefCell<BytesReader>,
    f_header: Cell<bool>,
    header: RefCell<OptRc<CastToTop>>,
    f_header_casted: Cell<bool>,
    header_casted: RefCell<OptRc<CastToTop>>,
}
impl KStruct for CastToTop {
    type Root = CastToTop;
    type Parent = CastToTop;

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
        *self_rc.code.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl CastToTop {
    pub fn header(
        &self
    ) -> KResult<Ref<OptRc<CastToTop>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_header.get() {
            return Ok(self.header.borrow());
        }
        let _pos = _io.pos();
        _io.seek(1 as usize)?;
        let t = Self::read_into::<_, CastToTop>(&*_io, Some(self._root.clone()), None)?.into();
        *self.header.borrow_mut() = t;
        _io.seek(_pos)?;
        Ok(self.header.borrow())
    }
    pub fn header_casted(
        &self
    ) -> KResult<Ref<OptRc<CastToTop>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_header_casted.get() {
            return Ok(self.header_casted.borrow());
        }
        *self.header_casted.borrow_mut() = self.header()?.clone();
        Ok(self.header_casted.borrow())
    }
}
impl CastToTop {
    pub fn code(&self) -> Ref<u8> {
        self.code.borrow()
    }
}
impl CastToTop {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
