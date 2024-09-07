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
pub struct InstanceStdArray {
    pub _root: SharedType<InstanceStdArray>,
    pub _parent: SharedType<InstanceStdArray>,
    pub _self: SharedType<Self>,
    ofs: RefCell<u32>,
    entry_size: RefCell<u32>,
    qty_entries: RefCell<u32>,
    _io: RefCell<BytesReader>,
    f_entries: Cell<bool>,
    entries: RefCell<Vec<Vec<u8>>>,
}
impl KStruct for InstanceStdArray {
    type Root = InstanceStdArray;
    type Parent = InstanceStdArray;

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
        *self_rc.ofs.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.entry_size.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.qty_entries.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl InstanceStdArray {
    pub fn entries(
        &self
    ) -> KResult<Ref<Vec<Vec<u8>>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_entries.get() {
            return Ok(self.entries.borrow());
        }
        self.f_entries.set(true);
        let _pos = _io.pos();
        _io.seek(*self.ofs() as usize)?;
        *self.entries.borrow_mut() = Vec::new();
        let l_entries = *self.qty_entries();
        for _i in 0..l_entries {
            self.entries.borrow_mut().push(_io.read_bytes(*self.entry_size() as usize)?.into());
        }
        _io.seek(_pos)?;
        Ok(self.entries.borrow())
    }
}
impl InstanceStdArray {
    pub fn ofs(&self) -> Ref<u32> {
        self.ofs.borrow()
    }
}
impl InstanceStdArray {
    pub fn entry_size(&self) -> Ref<u32> {
        self.entry_size.borrow()
    }
}
impl InstanceStdArray {
    pub fn qty_entries(&self) -> Ref<u32> {
        self.qty_entries.borrow()
    }
}
impl InstanceStdArray {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
