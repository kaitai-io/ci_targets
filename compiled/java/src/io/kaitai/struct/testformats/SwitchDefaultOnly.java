// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class SwitchDefaultOnly extends KaitaiStruct {
    public static SwitchDefaultOnly fromFile(String fileName) throws IOException {
        return new SwitchDefaultOnly(new ByteBufferKaitaiStream(fileName));
    }

    public SwitchDefaultOnly(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchDefaultOnly(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public SwitchDefaultOnly(KaitaiStream _io, KaitaiStruct _parent, SwitchDefaultOnly _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.opcode = this._io.readS1();
        switch (opcode()) {
        default: {
            this.byte = this._io.readS1();
            break;
        }
        }
        switch (opcode()) {
        default: {
            this.struct = new Data(this._io, this, _root);
            break;
        }
        }
        switch (opcode()) {
        default: {
            this._raw_structSized = this._io.readBytes(4);
            KaitaiStream _io__raw_structSized = new ByteBufferKaitaiStream(_raw_structSized);
            this.structSized = new Data(_io__raw_structSized, this, _root);
            break;
        }
        }
    }
    public static class Data extends KaitaiStruct {
        public static Data fromFile(String fileName) throws IOException {
            return new Data(new ByteBufferKaitaiStream(fileName));
        }

        public Data(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Data(KaitaiStream _io, SwitchDefaultOnly _parent) {
            this(_io, _parent, null);
        }

        public Data(KaitaiStream _io, SwitchDefaultOnly _parent, SwitchDefaultOnly _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.value = this._io.readBytes(4);
        }
        private byte[] value;
        private SwitchDefaultOnly _root;
        private SwitchDefaultOnly _parent;
        public byte[] value() { return value; }
        public SwitchDefaultOnly _root() { return _root; }
        public SwitchDefaultOnly _parent() { return _parent; }
    }
    private byte opcode;
    private byte byte;
    private Data struct;
    private Data structSized;
    private SwitchDefaultOnly _root;
    private KaitaiStruct _parent;
    private byte[] _raw_structSized;
    public byte opcode() { return opcode; }
    public byte byte() { return byte; }
    public Data struct() { return struct; }
    public Data structSized() { return structSized; }
    public SwitchDefaultOnly _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public byte[] _raw_structSized() { return _raw_structSized; }
}
