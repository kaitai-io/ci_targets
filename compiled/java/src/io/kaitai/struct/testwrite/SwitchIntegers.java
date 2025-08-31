// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;
import java.util.List;

public class SwitchIntegers extends KaitaiStruct.ReadWrite {
    public static SwitchIntegers fromFile(String fileName) throws IOException {
        return new SwitchIntegers(new ByteBufferKaitaiStream(fileName));
    }
    public SwitchIntegers() {
        this(null, null, null);
    }

    public SwitchIntegers(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchIntegers(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public SwitchIntegers(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, SwitchIntegers _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.opcodes = new ArrayList<Opcode>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                Opcode _t_opcodes = new Opcode(this._io, this, _root);
                try {
                    _t_opcodes._read();
                } finally {
                    this.opcodes.add(_t_opcodes);
                }
                i++;
            }
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.opcodes.size(); i++) {
            this.opcodes.get(((Number) (i)).intValue())._fetchInstances();
        }
    }

    public void _write_Seq() {
        for (int i = 0; i < this.opcodes.size(); i++) {
            if (this._io.isEof())
                throw new ConsistencyError("opcodes", this._io.size() - this._io.pos(), 0);
            this.opcodes.get(((Number) (i)).intValue())._write_Seq(this._io);
        }
        if (!(this._io.isEof()))
            throw new ConsistencyError("opcodes", this._io.size() - this._io.pos(), 0);
    }

    public void _check() {
        for (int i = 0; i < this.opcodes.size(); i++) {
            if (!Objects.equals(this.opcodes.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("opcodes", this.opcodes.get(((Number) (i)).intValue())._root(), _root());
            if (!Objects.equals(this.opcodes.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("opcodes", this.opcodes.get(((Number) (i)).intValue())._parent(), this);
        }
    }
    public static class Opcode extends KaitaiStruct.ReadWrite {
        public static Opcode fromFile(String fileName) throws IOException {
            return new Opcode(new ByteBufferKaitaiStream(fileName));
        }
        public Opcode() {
            this(null, null, null);
        }

        public Opcode(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Opcode(KaitaiStream _io, SwitchIntegers _parent) {
            this(_io, _parent, null);
        }

        public Opcode(KaitaiStream _io, SwitchIntegers _parent, SwitchIntegers _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.code = this._io.readU1();
            switch (code()) {
            case 1: {
                this.body = ((Number) (this._io.readU1())).longValue();
                break;
            }
            case 2: {
                this.body = ((Number) (this._io.readU2le())).longValue();
                break;
            }
            case 4: {
                this.body = ((Number) (this._io.readU4le())).longValue();
                break;
            }
            case 8: {
                this.body = this._io.readU8le();
                break;
            }
            }
        }

        public void _fetchInstances() {
            switch (code()) {
            case 1: {
                break;
            }
            case 2: {
                break;
            }
            case 4: {
                break;
            }
            case 8: {
                break;
            }
            }
        }

        public void _write_Seq() {
            this._io.writeU1(this.code);
            switch (code()) {
            case 1: {
                this._io.writeU1(((Number) (this.body)).intValue());
                break;
            }
            case 2: {
                this._io.writeU2le(((Number) (this.body)).intValue());
                break;
            }
            case 4: {
                this._io.writeU4le(((Number) (this.body)).longValue());
                break;
            }
            case 8: {
                this._io.writeU8le(this.body);
                break;
            }
            }
        }

        public void _check() {
            switch (code()) {
            case 1: {
                break;
            }
            case 2: {
                break;
            }
            case 4: {
                break;
            }
            case 8: {
                break;
            }
            }
        }
        private int code;
        private Long body;
        private SwitchIntegers _root;
        private SwitchIntegers _parent;
        public int code() { return code; }
        public void setCode(int _v) { code = _v; }
        public Long body() { return body; }
        public void setBody(Long _v) { body = _v; }
        public SwitchIntegers _root() { return _root; }
        public void set_root(SwitchIntegers _v) { _root = _v; }
        public SwitchIntegers _parent() { return _parent; }
        public void set_parent(SwitchIntegers _v) { _parent = _v; }
    }
    private List<Opcode> opcodes;
    private SwitchIntegers _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<Opcode> opcodes() { return opcodes; }
    public void setOpcodes(List<Opcode> _v) { opcodes = _v; }
    public SwitchIntegers _root() { return _root; }
    public void set_root(SwitchIntegers _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
