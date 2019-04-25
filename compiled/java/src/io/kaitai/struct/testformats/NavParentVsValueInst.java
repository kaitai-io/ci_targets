// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.Charset;

public class NavParentVsValueInst extends KaitaiStruct {
    public static NavParentVsValueInst fromFile(String fileName) throws IOException {
        return new NavParentVsValueInst(new ByteBufferKaitaiStream(fileName));
    }

    public NavParentVsValueInst(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NavParentVsValueInst(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public NavParentVsValueInst(KaitaiStream _io, KaitaiStruct _parent, NavParentVsValueInst _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.s1 = new String(this._io.readBytesTerm(124, false, true, true), Charset.forName("UTF-8"));
        this.child = new ChildObj(this._io, this, _root);
    }
    public static class ChildObj extends KaitaiStruct {
        public static ChildObj fromFile(String fileName) throws IOException {
            return new ChildObj(new ByteBufferKaitaiStream(fileName));
        }

        public ChildObj(KaitaiStream _io) {
            this(_io, null, null);
        }

        public ChildObj(KaitaiStream _io, NavParentVsValueInst _parent) {
            this(_io, _parent, null);
        }

        public ChildObj(KaitaiStream _io, NavParentVsValueInst _parent, NavParentVsValueInst _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
        }
        private Boolean doSomething;
        public Boolean doSomething() {
            if (this.doSomething != null)
                return this.doSomething;
            boolean _tmp = (boolean) ((_parent().s1().equals("foo") ? true : false));
            this.doSomething = _tmp;
            return this.doSomething;
        }
        private NavParentVsValueInst _root;
        private NavParentVsValueInst _parent;
        public NavParentVsValueInst _root() { return _root; }
        public NavParentVsValueInst _parent() { return _parent; }
    }
    private String s1;
    private ChildObj child;
    private NavParentVsValueInst _root;
    private KaitaiStruct _parent;
    public String s1() { return s1; }
    public ChildObj child() { return child; }
    public NavParentVsValueInst _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
