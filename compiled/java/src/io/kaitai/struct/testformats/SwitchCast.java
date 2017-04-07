// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;

import java.io.IOException;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.nio.charset.Charset;

public class SwitchCast extends KaitaiStruct {
    public static SwitchCast fromFile(String fileName) throws IOException {
        return new SwitchCast(new KaitaiStream(fileName));
    }

    public SwitchCast(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public SwitchCast(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public SwitchCast(KaitaiStream _io, KaitaiStruct _parent, SwitchCast _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
        this.opcodes = new ArrayList<Opcode>();
        while (!this._io.isEof()) {
            this.opcodes.add(new Opcode(this._io, this, _root));
        }
    }
    public static class Opcode extends KaitaiStruct {
        public static Opcode fromFile(String fileName) throws IOException {
            return new Opcode(new KaitaiStream(fileName));
        }

        public Opcode(KaitaiStream _io) {
            super(_io);
            _read();
        }

        public Opcode(KaitaiStream _io, SwitchCast _parent) {
            super(_io);
            this._parent = _parent;
            _read();
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
    public static class Intval extends KaitaiStruct {
        public static Intval fromFile(String fileName) throws IOException {
            return new Intval(new KaitaiStream(fileName));
        }

        public Intval(KaitaiStream _io) {
            super(_io);
            _read();
        }

        public Intval(KaitaiStream _io, Opcode _parent) {
            super(_io);
            this._parent = _parent;
            _read();
        }

        public Intval(KaitaiStream _io, Opcode _parent, SwitchCast _root) {
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
    public static class Strval extends KaitaiStruct {
        public static Strval fromFile(String fileName) throws IOException {
            return new Strval(new KaitaiStream(fileName));
        }

        public Strval(KaitaiStream _io) {
            super(_io);
            _read();
        }

        public Strval(KaitaiStream _io, Opcode _parent) {
            super(_io);
            this._parent = _parent;
            _read();
        }

        public Strval(KaitaiStream _io, Opcode _parent, SwitchCast _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.value = new String(this._io.readBytesTerm(0, false, true, true), Charset.forName("ASCII"));
        }
        private String value;
        private SwitchCast _root;
        private SwitchCast.Opcode _parent;
        public String value() { return value; }
        public SwitchCast _root() { return _root; }
        public SwitchCast.Opcode _parent() { return _parent; }
    }
    private Strval firstObj;
    public Strval firstObj() {
        if (this.firstObj != null)
            return this.firstObj;
        SwitchCast.Strval _tmp = (SwitchCast.Strval) (((Strval) (opcodes().get((int) 0).body())));
        this.firstObj = _tmp;
        return this.firstObj;
    }
    private Integer secondVal;
    public Integer secondVal() {
        if (this.secondVal != null)
            return this.secondVal;
        int _tmp = (int) (((Intval) (opcodes().get((int) 1).body())).value());
        this.secondVal = _tmp;
        return this.secondVal;
    }
    private Strval errCast;
    public Strval errCast() {
        if (this.errCast != null)
            return this.errCast;
        SwitchCast.Strval _tmp = (SwitchCast.Strval) (((Strval) (opcodes().get((int) 2).body())));
        this.errCast = _tmp;
        return this.errCast;
    }
    private ArrayList<Opcode> opcodes;
    private SwitchCast _root;
    private KaitaiStruct _parent;
    public ArrayList<Opcode> opcodes() { return opcodes; }
    public SwitchCast _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
