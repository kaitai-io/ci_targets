// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class SwitchElseOnly extends KaitaiStruct.ReadWrite {
    public static SwitchElseOnly fromFile(String fileName) throws IOException {
        return new SwitchElseOnly(new ByteBufferKaitaiStream(fileName));
    }
    public SwitchElseOnly() {
        this(null, null, null);
    }

    public SwitchElseOnly(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchElseOnly(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public SwitchElseOnly(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, SwitchElseOnly _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.opcode = this._io.readS1();
        this.primByte = this._io.readS1();
        this.indicator = this._io.readBytes(4);
        this.ut = new Data(this._io, this, _root);
        this.ut._read();
    }

    public void _fetchInstances() {
        this.ut._fetchInstances();
    }

    public void _write_Seq() {
        this._io.writeS1(this.opcode);
        this._io.writeS1(this.primByte);
        this._io.writeBytes(this.indicator);
        this.ut._write_Seq(this._io);
    }

    public void _check() {
        if (this.indicator.length != 4)
            throw new ConsistencyError("indicator", this.indicator.length, 4);
        if (!Objects.equals(this.ut._root(), _root()))
            throw new ConsistencyError("ut", this.ut._root(), _root());
        if (!Objects.equals(this.ut._parent(), this))
            throw new ConsistencyError("ut", this.ut._parent(), this);
    }
    public static class Data extends KaitaiStruct.ReadWrite {
        public static Data fromFile(String fileName) throws IOException {
            return new Data(new ByteBufferKaitaiStream(fileName));
        }
        public Data() {
            this(null, null, null);
        }

        public Data(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Data(KaitaiStream _io, SwitchElseOnly _parent) {
            this(_io, _parent, null);
        }

        public Data(KaitaiStream _io, SwitchElseOnly _parent, SwitchElseOnly _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.value = this._io.readBytes(4);
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeBytes(this.value);
        }

        public void _check() {
            if (this.value.length != 4)
                throw new ConsistencyError("value", this.value.length, 4);
        }
        private byte[] value;
        private SwitchElseOnly _root;
        private SwitchElseOnly _parent;
        public byte[] value() { return value; }
        public void setValue(byte[] _v) { value = _v; }
        public SwitchElseOnly _root() { return _root; }
        public void set_root(SwitchElseOnly _v) { _root = _v; }
        public SwitchElseOnly _parent() { return _parent; }
        public void set_parent(SwitchElseOnly _v) { _parent = _v; }
    }
    private byte opcode;
    private byte primByte;
    private byte[] indicator;
    private Data ut;
    private SwitchElseOnly _root;
    private KaitaiStruct.ReadWrite _parent;
    public byte opcode() { return opcode; }
    public void setOpcode(byte _v) { opcode = _v; }
    public byte primByte() { return primByte; }
    public void setPrimByte(byte _v) { primByte = _v; }
    public byte[] indicator() { return indicator; }
    public void setIndicator(byte[] _v) { indicator = _v; }
    public Data ut() { return ut; }
    public void setUt(Data _v) { ut = _v; }
    public SwitchElseOnly _root() { return _root; }
    public void set_root(SwitchElseOnly _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
