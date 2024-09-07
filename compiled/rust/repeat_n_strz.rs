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
pub struct RepeatNStrz {
    pub _root: SharedType<RepeatNStrz>,
    pub _parent: SharedType<RepeatNStrz>,
    pub _self: SharedType<Self>,
    qty: RefCell<u32>,
    lines: RefCell<Vec<String>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for RepeatNStrz {
    type Root = RepeatNStrz;
    type Parent = RepeatNStrz;

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
        *self_rc.qty.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.lines.borrow_mut() = Vec::new();
        let l_lines = *self_rc.qty();
        for _i in 0..l_lines {
            self_rc.lines.borrow_mut().push(bytes_to_str(&_io.read_bytes_term(0, false, true, true)?.into(), "UTF-8")?);
        }
        Ok(())
    }
}
impl RepeatNStrz {
}
impl RepeatNStrz {
    pub fn qty(&self) -> Ref<u32> {
        self.qty.borrow()
    }
}
impl RepeatNStrz {
    pub fn lines(&self) -> Ref<Vec<String>> {
        self.lines.borrow()
    }
}
impl RepeatNStrz {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
