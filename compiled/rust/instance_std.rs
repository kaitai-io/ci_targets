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
pub struct InstanceStd {
    pub _root: SharedType<InstanceStd>,
    pub _parent: SharedType<InstanceStd>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
    f_header: Cell<bool>,
    header: RefCell<String>,
}
impl KStruct for InstanceStd {
    type Root = InstanceStd;
    type Parent = InstanceStd;

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
impl InstanceStd {
    pub fn header(
        &self
    ) -> KResult<Ref<'_, String>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_header.get() {
            return Ok(self.header.borrow());
        }
        self.f_header.set(true);
        let _pos = _io.pos();
        _io.seek(2 as usize)?;
        *self.header.borrow_mut() = bytes_to_str(&_io.read_bytes(5 as usize)?.into(), "ASCII")?;
        _io.seek(_pos)?;
        Ok(self.header.borrow())
    }
}
impl InstanceStd {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
