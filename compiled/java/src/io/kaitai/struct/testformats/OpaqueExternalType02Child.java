// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class OpaqueExternalType02Child extends KaitaiStruct {
    public static OpaqueExternalType02Child fromFile(String fileName) throws IOException {
        return new OpaqueExternalType02Child(new ByteBufferKaitaiStream(fileName));
    }

    public OpaqueExternalType02Child(KaitaiStream _io) {
        this(_io, null, null);
    }

    public OpaqueExternalType02Child(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public OpaqueExternalType02Child(KaitaiStream _io, KaitaiStruct _parent, OpaqueExternalType02Child _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.s1 = new String(this._io.readBytesTerm((byte) 124, false, true, true), StandardCharsets.UTF_8);
        this.s2 = new String(this._io.readBytesTerm((byte) 124, false, false, true), StandardCharsets.UTF_8);
        this.s3 = new OpaqueExternalType02ChildChild(this._io, this, _root);
    }

    public void _fetchInstances() {
        this.s3._fetchInstances();
    }
    public static class OpaqueExternalType02ChildChild extends KaitaiStruct {
        public static OpaqueExternalType02ChildChild fromFile(String fileName) throws IOException {
            return new OpaqueExternalType02ChildChild(new ByteBufferKaitaiStream(fileName));
        }

        public OpaqueExternalType02ChildChild(KaitaiStream _io) {
            this(_io, null, null);
        }

        public OpaqueExternalType02ChildChild(KaitaiStream _io, OpaqueExternalType02Child _parent) {
            this(_io, _parent, null);
        }

        public OpaqueExternalType02ChildChild(KaitaiStream _io, OpaqueExternalType02Child _parent, OpaqueExternalType02Child _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            if (_root().someMethod()) {
                this.s3 = new String(this._io.readBytesTerm((byte) 64, true, true, true), StandardCharsets.UTF_8);
            }
        }

        public void _fetchInstances() {
            if (_root().someMethod()) {
            }
        }
        public String s3() { return s3; }
        public OpaqueExternalType02Child _root() { return _root; }
        public OpaqueExternalType02Child _parent() { return _parent; }
        private String s3;
        private OpaqueExternalType02Child _root;
        private OpaqueExternalType02Child _parent;
    }
    public Boolean someMethod() {
        if (this.someMethod != null)
            return this.someMethod;
        this.someMethod = true;
        return this.someMethod;
    }
    public String s1() { return s1; }
    public String s2() { return s2; }
    public OpaqueExternalType02ChildChild s3() { return s3; }
    public OpaqueExternalType02Child _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private Boolean someMethod;
    private String s1;
    private String s2;
    private OpaqueExternalType02ChildChild s3;
    private OpaqueExternalType02Child _root;
    private KaitaiStruct _parent;
}
