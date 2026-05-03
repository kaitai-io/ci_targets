// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import io.kaitai.struct.IKaitaiEnum;
import java.nio.charset.StandardCharsets;
import java.util.List;

public class SwitchManualEnumInvalidElse extends KaitaiStruct {
    public static SwitchManualEnumInvalidElse fromFile(String fileName) throws IOException {
        return new SwitchManualEnumInvalidElse(new ByteBufferKaitaiStream(fileName));
    }

    public SwitchManualEnumInvalidElse(KaitaiStream _io) {
        this(_io, null, null);
    }

    public SwitchManualEnumInvalidElse(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public SwitchManualEnumInvalidElse(KaitaiStream _io, KaitaiStruct _parent, SwitchManualEnumInvalidElse _root) {
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
    public static class Opcode extends KaitaiStruct {
        public static Opcode fromFile(String fileName) throws IOException {
            return new Opcode(new ByteBufferKaitaiStream(fileName));
        }

        public interface ICodeEnum extends IKaitaiEnum {
            public static final class Unknown extends IKaitaiEnum.Unknown implements ICodeEnum {
                Unknown(long id) { super(id); }

                @Override
                public String toString() { return "CodeEnum(" + this.id + ")"; }

                @Override
                public int hashCode() {
                    final int result = 31 + "CodeEnum".hashCode();
                    return 31 * result + Long.hashCode(this.id);
                }

                @Override
                public boolean equals(Object other) {
                    return other instanceof ICodeEnum.Unknown && this.id == ((ICodeEnum.Unknown)other).id;
                }
            }
        }
        public enum CodeEnum implements ICodeEnum {
            FOO(1),
            INTVAL(73),
            STRVAL(83);

            private final long id;
            private static final HashMap<Long, ICodeEnum> variants = new HashMap<>(3);
            static {
                for (CodeEnum e : values()) {
                    variants.put(e.id, e);
                }
            }

            public static ICodeEnum byId(final long id) {
                return variants.computeIfAbsent(id, _id -> new ICodeEnum.Unknown(id));
            }

            private CodeEnum(long id) { this.id = id; }

            @Override
            public long id() { return id; }
        }

        public Opcode(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Opcode(KaitaiStream _io, SwitchManualEnumInvalidElse _parent) {
            this(_io, _parent, null);
        }

        public Opcode(KaitaiStream _io, SwitchManualEnumInvalidElse _parent, SwitchManualEnumInvalidElse _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.code = CodeEnum.byId(this._io.readU1());
            {
                final ICodeEnum on = code();
                if (on instanceof CodeEnum) {
                    switch ((CodeEnum)on) {
                        case INTVAL: {
                            this.body = new Intval(this._io, this, _root);
                            break;
                        }
                        case STRVAL: {
                            this.body = new Strval(this._io, this, _root);
                            break;
                        }
                        default: {
                            this.body = new Defval(this._io, this, _root);
                            break;
                        }
                    }
                } else {
                    this.body = new Defval(this._io, this, _root);
                }
            }
        }

        public void _fetchInstances() {
            {
                final ICodeEnum on = code();
                if (on instanceof CodeEnum) {
                    switch ((CodeEnum)on) {
                        case INTVAL: {
                            ((Intval) (this.body))._fetchInstances();
                            break;
                        }
                        case STRVAL: {
                            ((Strval) (this.body))._fetchInstances();
                            break;
                        }
                        default: {
                            ((Defval) (this.body))._fetchInstances();
                            break;
                        }
                    }
                } else {
                    ((Defval) (this.body))._fetchInstances();
                }
            }
        }
        public static class Defval extends KaitaiStruct {
            public static Defval fromFile(String fileName) throws IOException {
                return new Defval(new ByteBufferKaitaiStream(fileName));
            }

            public Defval(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Defval(KaitaiStream _io, SwitchManualEnumInvalidElse.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Defval(KaitaiStream _io, SwitchManualEnumInvalidElse.Opcode _parent, SwitchManualEnumInvalidElse _root) {
                super(_io);
                this._parent = _parent;
                this._root = _root;
                _read();
            }
            private void _read() {
            }

            public void _fetchInstances() {
            }
            public Byte value() {
                if (this.value != null)
                    return this.value;
                this.value = ((byte) 123);
                return this.value;
            }
            public SwitchManualEnumInvalidElse _root() { return _root; }
            public SwitchManualEnumInvalidElse.Opcode _parent() { return _parent; }
            private Byte value;
            private SwitchManualEnumInvalidElse _root;
            private SwitchManualEnumInvalidElse.Opcode _parent;
        }
        public static class Intval extends KaitaiStruct {
            public static Intval fromFile(String fileName) throws IOException {
                return new Intval(new ByteBufferKaitaiStream(fileName));
            }

            public Intval(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Intval(KaitaiStream _io, SwitchManualEnumInvalidElse.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Intval(KaitaiStream _io, SwitchManualEnumInvalidElse.Opcode _parent, SwitchManualEnumInvalidElse _root) {
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
            public SwitchManualEnumInvalidElse _root() { return _root; }
            public SwitchManualEnumInvalidElse.Opcode _parent() { return _parent; }
            private int value;
            private SwitchManualEnumInvalidElse _root;
            private SwitchManualEnumInvalidElse.Opcode _parent;
        }
        public static class Strval extends KaitaiStruct {
            public static Strval fromFile(String fileName) throws IOException {
                return new Strval(new ByteBufferKaitaiStream(fileName));
            }

            public Strval(KaitaiStream _io) {
                this(_io, null, null);
            }

            public Strval(KaitaiStream _io, SwitchManualEnumInvalidElse.Opcode _parent) {
                this(_io, _parent, null);
            }

            public Strval(KaitaiStream _io, SwitchManualEnumInvalidElse.Opcode _parent, SwitchManualEnumInvalidElse _root) {
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
            public SwitchManualEnumInvalidElse _root() { return _root; }
            public SwitchManualEnumInvalidElse.Opcode _parent() { return _parent; }
            private String value;
            private SwitchManualEnumInvalidElse _root;
            private SwitchManualEnumInvalidElse.Opcode _parent;
        }
        public ICodeEnum code() { return code; }
        public KaitaiStruct body() { return body; }
        public SwitchManualEnumInvalidElse _root() { return _root; }
        public SwitchManualEnumInvalidElse _parent() { return _parent; }
        private ICodeEnum code;
        private KaitaiStruct body;
        private SwitchManualEnumInvalidElse _root;
        private SwitchManualEnumInvalidElse _parent;
    }
    public List<Opcode> opcodes() { return opcodes; }
    public SwitchManualEnumInvalidElse _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private List<Opcode> opcodes;
    private SwitchManualEnumInvalidElse _root;
    private KaitaiStruct _parent;
}
