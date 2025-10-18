// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.StandardCharsets;
import java.util.List;

public class SwitchCast extends KaitaiStruct {
    public static SwitchCast fromFile(String fileName) throws IOException {
        return new SwitchCast(new ByteBufferKaitaiStream(fileName));
    }

    public SwitchCast(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchCast(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public SwitchCast(KaitaiStream _io, KaitaiStruct _parent, SwitchCast _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.opcodes = new ArrayList<Opcode>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.opcodes.add(new Opcode(this._io, this, _root));
                i++;
            }
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.opcodes.size(); i++) {
            this.opcodes.get(((Number) (i)).intValue())._fetchInstances();
        }
    }
    public static class Intval extends KaitaiStruct {
        public static Intval fromFile(String fileName) throws IOException {
            return new Intval(new ByteBufferKaitaiStream(fileName));
        }

        public Intval(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Intval(KaitaiStream _io, SwitchCast.Opcode _parent) {
            this(_io, _parent, null);
        }

        public Intval(KaitaiStream _io, SwitchCast.Opcode _parent, SwitchCast _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.value = this._io.readU1();
        }

        public void _fetchInstances() {
        }
        public int value() { return value; }
        public SwitchCast _root() { return _root; }
        public SwitchCast.Opcode _parent() { return _parent; }
        private int value;
        private SwitchCast _root;
        private SwitchCast.Opcode _parent;
    }
    public static class Opcode extends KaitaiStruct {
        public static Opcode fromFile(String fileName) throws IOException {
            return new Opcode(new ByteBufferKaitaiStream(fileName));
        }

        public Opcode(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Opcode(KaitaiStream _io, SwitchCast _parent) {
            this(_io, _parent, null);
        }

        public Opcode(KaitaiStream _io, SwitchCast _parent, SwitchCast _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.code = this._io.readU1();
            switch (code()) {
            case 73: {
                this.body = new Intval(this._io, this, _root);
                break;
            }
            case 83: {
                this.body = new Strval(this._io, this, _root);
                break;
            }
            }
        }

        public void _fetchInstances() {
            switch (code()) {
            case 73: {
                ((Intval) (this.body))._fetchInstances();
                break;
            }
            case 83: {
                ((Strval) (this.body))._fetchInstances();
                break;
            }
            }
        }
        public int code() { return code; }
        public KaitaiStruct body() { return body; }
        public SwitchCast _root() { return _root; }
        public SwitchCast _parent() { return _parent; }
        private int code;
        private KaitaiStruct body;
        private SwitchCast _root;
        private SwitchCast _parent;
    }
    public static class Strval extends KaitaiStruct {
        public static Strval fromFile(String fileName) throws IOException {
            return new Strval(new ByteBufferKaitaiStream(fileName));
        }

        public Strval(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Strval(KaitaiStream _io, SwitchCast.Opcode _parent) {
            this(_io, _parent, null);
        }

        public Strval(KaitaiStream _io, SwitchCast.Opcode _parent, SwitchCast _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.value = new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.US_ASCII);
        }

        public void _fetchInstances() {
        }
        public String value() { return value; }
        public SwitchCast _root() { return _root; }
        public SwitchCast.Opcode _parent() { return _parent; }
        private String value;
        private SwitchCast _root;
        private SwitchCast.Opcode _parent;
    }
    public SwitchCast.Strval errCast() {
        if (this.errCast != null)
            return this.errCast;
        this.errCast = ((SwitchCast.Strval) (opcodes().get(((int) 2)).body()));
        return this.errCast;
    }
    public SwitchCast.Strval firstObj() {
        if (this.firstObj != null)
            return this.firstObj;
        this.firstObj = ((SwitchCast.Strval) (opcodes().get(((int) 0)).body()));
        return this.firstObj;
    }
    public Integer secondVal() {
        if (this.secondVal != null)
            return this.secondVal;
        this.secondVal = ((Number) (((SwitchCast.Intval) (opcodes().get(((int) 1)).body())).value())).intValue();
        return this.secondVal;
    }
    public List<Opcode> opcodes() { return opcodes; }
    public SwitchCast _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private SwitchCast.Strval errCast;
    private SwitchCast.Strval firstObj;
    private Integer secondVal;
    private List<Opcode> opcodes;
    private SwitchCast _root;
    private KaitaiStruct _parent;
}
