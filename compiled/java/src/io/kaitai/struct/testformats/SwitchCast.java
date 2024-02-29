// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.StandardCharsets;

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
        private int value;
        private SwitchCast _root;
        private SwitchCast.Opcode _parent;
        public int value() { return value; }
        public SwitchCast _root() { return _root; }
        public SwitchCast.Opcode _parent() { return _parent; }
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
        private int code;
        private KaitaiStruct body;
        private SwitchCast _root;
        private SwitchCast _parent;
        public int code() { return code; }
        public KaitaiStruct body() { return body; }
        public SwitchCast _root() { return _root; }
        public SwitchCast _parent() { return _parent; }
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
        private String value;
        private SwitchCast _root;
        private SwitchCast.Opcode _parent;
        public String value() { return value; }
        public SwitchCast _root() { return _root; }
        public SwitchCast.Opcode _parent() { return _parent; }
    }
    private SwitchCast.Strval errCast;
    public SwitchCast.Strval errCast() {
        if (this.errCast != null)
            return this.errCast;
        this.errCast = ((SwitchCast.Strval) (opcodes().get((int) 2).body()));
        return this.errCast;
    }
    private SwitchCast.Strval firstObj;
    public SwitchCast.Strval firstObj() {
        if (this.firstObj != null)
            return this.firstObj;
        this.firstObj = ((SwitchCast.Strval) (opcodes().get((int) 0).body()));
        return this.firstObj;
    }
    private Integer secondVal;
    public Integer secondVal() {
        if (this.secondVal != null)
            return this.secondVal;
        int _tmp = (int) (((SwitchCast.Intval) (opcodes().get((int) 1).body())).value());
        this.secondVal = _tmp;
        return this.secondVal;
    }
    private ArrayList<Opcode> opcodes;
    private SwitchCast _root;
    private KaitaiStruct _parent;
    public ArrayList<Opcode> opcodes() { return opcodes; }
    public SwitchCast _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
