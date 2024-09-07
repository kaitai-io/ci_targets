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
pub struct IfInstances {
    pub _root: SharedType<IfInstances>,
    pub _parent: SharedType<IfInstances>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
    f_never_happens: Cell<bool>,
    never_happens: RefCell<u8>,
}
impl KStruct for IfInstances {
    type Root = IfInstances;
    type Parent = IfInstances;

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
impl IfInstances {
    pub fn never_happens(
        &self
    ) -> KResult<Ref<u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_never_happens.get() {
            return Ok(self.never_happens.borrow());
        }
        self.f_never_happens.set(true);
        if false {
            let _pos = _io.pos();
            _io.seek(100500 as usize)?;
            *self.never_happens.borrow_mut() = _io.read_u1()?.into();
            _io.seek(_pos)?;
        }
        Ok(self.never_happens.borrow())
    }
}
impl IfInstances {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
