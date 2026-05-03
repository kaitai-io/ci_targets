// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import io.kaitai.struct.IKaitaiEnum;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;

public class DebugEnumName extends KaitaiStruct.ReadWrite {
    public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
    public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
    public Map<String, List<Integer>> _arrStart = new HashMap<String, List<Integer>>();
    public Map<String, List<Integer>> _arrEnd = new HashMap<String, List<Integer>>();

    public static DebugEnumName fromFile(String fileName) throws IOException {
        return new DebugEnumName(new ByteBufferKaitaiStream(fileName));
    }

    public interface ITestEnum1 extends IKaitaiEnum {
        public static final class Unknown extends IKaitaiEnum.Unknown implements ITestEnum1 {
            Unknown(long id) { super(id); }

            @Override
            public String toString() { return "TestEnum1(" + this.id + ")"; }

            @Override
            public int hashCode() {
                final int result = 31 + "TestEnum1".hashCode();
                return 31 * result + Long.hashCode(this.id);
            }

            @Override
            public boolean equals(Object other) {
                return other instanceof ITestEnum1.Unknown && this.id == ((ITestEnum1.Unknown)other).id;
            }
        }
    }
    public enum TestEnum1 implements ITestEnum1 {
        ENUM_VALUE_80(80);

        private final long id;
        private static final HashMap<Long, ITestEnum1> variants = new HashMap<>(1);
        static {
            for (TestEnum1 e : values()) {
                variants.put(e.id, e);
            }
        }

        public static ITestEnum1 byId(final long id) {
            return variants.computeIfAbsent(id, _id -> new ITestEnum1.Unknown(id));
        }

        private TestEnum1(long id) { this.id = id; }

        @Override
        public long id() { return id; }
    }

    public interface ITestEnum2 extends IKaitaiEnum {
        public static final class Unknown extends IKaitaiEnum.Unknown implements ITestEnum2 {
            Unknown(long id) { super(id); }

            @Override
            public String toString() { return "TestEnum2(" + this.id + ")"; }

            @Override
            public int hashCode() {
                final int result = 31 + "TestEnum2".hashCode();
                return 31 * result + Long.hashCode(this.id);
            }

            @Override
            public boolean equals(Object other) {
                return other instanceof ITestEnum2.Unknown && this.id == ((ITestEnum2.Unknown)other).id;
            }
        }
    }
    public enum TestEnum2 implements ITestEnum2 {
        ENUM_VALUE_65(65);

        private final long id;
        private static final HashMap<Long, ITestEnum2> variants = new HashMap<>(1);
        static {
            for (TestEnum2 e : values()) {
                variants.put(e.id, e);
            }
        }

        public static ITestEnum2 byId(final long id) {
            return variants.computeIfAbsent(id, _id -> new ITestEnum2.Unknown(id));
        }

        private TestEnum2(long id) { this.id = id; }

        @Override
        public long id() { return id; }
    }
    public static String[] _seqFields = new String[] { "one", "arrayOfInts", "testType" };
    public DebugEnumName() {
        this(null, null, null);
    }

    public DebugEnumName(KaitaiStream _io) {
        this(_io, null, null);
    }

    public DebugEnumName(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public DebugEnumName(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, DebugEnumName _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        _attrStart.put("one", this._io.pos());
        this.one = TestEnum1.byId(this._io.readU1());
        _attrEnd.put("one", this._io.pos());
        _attrStart.put("arrayOfInts", this._io.pos());
        this.arrayOfInts = new ArrayList<ITestEnum2>();
        for (int i = 0; i < 1; i++) {
            {
                List<Integer> _posList = _arrStart.get("arrayOfInts");
                if (_posList == null) {
                    _posList = new ArrayList<Integer>();
                    _arrStart.put("arrayOfInts", _posList);
                }
                _posList.add(this._io.pos());
            }
            this.arrayOfInts.add(TestEnum2.byId(this._io.readU1()));
            {
                List<Integer> _posList = _arrEnd.get("arrayOfInts");
                if (_posList == null) {
                    _posList = new ArrayList<Integer>();
                    _arrEnd.put("arrayOfInts", _posList);
                }
                _posList.add(this._io.pos());
            }
        }
        _attrEnd.put("arrayOfInts", this._io.pos());
        _attrStart.put("testType", this._io.pos());
        this.testType = new TestSubtype(this._io, this, _root);
        this.testType._read();
        _attrEnd.put("testType", this._io.pos());
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.arrayOfInts.size(); i++) {
        }
        this.testType._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU1(((Number) (this.one.id())).intValue());
        for (int i = 0; i < this.arrayOfInts.size(); i++) {
            this._io.writeU1(((Number) (this.arrayOfInts.get(((Number) (i)).intValue()).id())).intValue());
        }
        this.testType._write_Seq(this._io);
    }

    public void _check() {
        if (this.arrayOfInts.size() != 1)
            throw new ConsistencyError("array_of_ints", 1, this.arrayOfInts.size());
        for (int i = 0; i < this.arrayOfInts.size(); i++) {
        }
        if (!Objects.equals(this.testType._root(), _root()))
            throw new ConsistencyError("test_type", _root(), this.testType._root());
        if (!Objects.equals(this.testType._parent(), this))
            throw new ConsistencyError("test_type", this, this.testType._parent());
        _dirty = false;
    }
    public static class TestSubtype extends KaitaiStruct.ReadWrite {
        public Map<String, Integer> _attrStart = new HashMap<String, Integer>();
        public Map<String, Integer> _attrEnd = new HashMap<String, Integer>();
        public Map<String, List<Integer>> _arrStart = new HashMap<String, List<Integer>>();
        public Map<String, List<Integer>> _arrEnd = new HashMap<String, List<Integer>>();

        public static TestSubtype fromFile(String fileName) throws IOException {
            return new TestSubtype(new ByteBufferKaitaiStream(fileName));
        }

        public interface IInnerEnum1 extends IKaitaiEnum {
            public static final class Unknown extends IKaitaiEnum.Unknown implements IInnerEnum1 {
                Unknown(long id) { super(id); }

                @Override
                public String toString() { return "InnerEnum1(" + this.id + ")"; }

                @Override
                public int hashCode() {
                    final int result = 31 + "InnerEnum1".hashCode();
                    return 31 * result + Long.hashCode(this.id);
                }

                @Override
                public boolean equals(Object other) {
                    return other instanceof IInnerEnum1.Unknown && this.id == ((IInnerEnum1.Unknown)other).id;
                }
            }
        }
        public enum InnerEnum1 implements IInnerEnum1 {
            ENUM_VALUE_67(67);

            private final long id;
            private static final HashMap<Long, IInnerEnum1> variants = new HashMap<>(1);
            static {
                for (InnerEnum1 e : values()) {
                    variants.put(e.id, e);
                }
            }

            public static IInnerEnum1 byId(final long id) {
                return variants.computeIfAbsent(id, _id -> new IInnerEnum1.Unknown(id));
            }

            private InnerEnum1(long id) { this.id = id; }

            @Override
            public long id() { return id; }
        }

        public interface IInnerEnum2 extends IKaitaiEnum {
            public static final class Unknown extends IKaitaiEnum.Unknown implements IInnerEnum2 {
                Unknown(long id) { super(id); }

                @Override
                public String toString() { return "InnerEnum2(" + this.id + ")"; }

                @Override
                public int hashCode() {
                    final int result = 31 + "InnerEnum2".hashCode();
                    return 31 * result + Long.hashCode(this.id);
                }

                @Override
                public boolean equals(Object other) {
                    return other instanceof IInnerEnum2.Unknown && this.id == ((IInnerEnum2.Unknown)other).id;
                }
            }
        }
        public enum InnerEnum2 implements IInnerEnum2 {
            ENUM_VALUE_11(11);

            private final long id;
            private static final HashMap<Long, IInnerEnum2> variants = new HashMap<>(1);
            static {
                for (InnerEnum2 e : values()) {
                    variants.put(e.id, e);
                }
            }

            public static IInnerEnum2 byId(final long id) {
                return variants.computeIfAbsent(id, _id -> new IInnerEnum2.Unknown(id));
            }

            private InnerEnum2(long id) { this.id = id; }

            @Override
            public long id() { return id; }
        }
        public static String[] _seqFields = new String[] { "field1", "field2" };
        public TestSubtype() {
            this(null, null, null);
        }

        public TestSubtype(KaitaiStream _io) {
            this(_io, null, null);
        }

        public TestSubtype(KaitaiStream _io, DebugEnumName _parent) {
            this(_io, _parent, null);
        }

        public TestSubtype(KaitaiStream _io, DebugEnumName _parent, DebugEnumName _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            _attrStart.put("field1", this._io.pos());
            this.field1 = InnerEnum1.byId(this._io.readU1());
            _attrEnd.put("field1", this._io.pos());
            _attrStart.put("field2", this._io.pos());
            this.field2 = this._io.readU1();
            _attrEnd.put("field2", this._io.pos());
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(((Number) (this.field1.id())).intValue());
            this._io.writeU1(this.field2);
        }

        public void _check() {
            _dirty = false;
        }
        public IInnerEnum2 instanceField() {
            if (this.instanceField != null)
                return this.instanceField;
            this.instanceField = InnerEnum2.byId(field2() & 15);
            return this.instanceField;
        }
        public void _invalidateInstanceField() { this.instanceField = null; }
        public IInnerEnum1 field1() { return field1; }
        public void setField1(IInnerEnum1 _v) { _dirty = true; field1 = _v; }
        public int field2() { return field2; }
        public void setField2(int _v) { _dirty = true; field2 = _v; }
        public DebugEnumName _root() { return _root; }
        public void set_root(DebugEnumName _v) { _dirty = true; _root = _v; }
        public DebugEnumName _parent() { return _parent; }
        public void set_parent(DebugEnumName _v) { _dirty = true; _parent = _v; }
        private IInnerEnum2 instanceField;
        private IInnerEnum1 field1;
        private int field2;
        private DebugEnumName _root;
        private DebugEnumName _parent;
    }
    public ITestEnum1 one() { return one; }
    public void setOne(ITestEnum1 _v) { _dirty = true; one = _v; }
    public List<ITestEnum2> arrayOfInts() { return arrayOfInts; }
    public void setArrayOfInts(List<ITestEnum2> _v) { _dirty = true; arrayOfInts = _v; }
    public TestSubtype testType() { return testType; }
    public void setTestType(TestSubtype _v) { _dirty = true; testType = _v; }
    public DebugEnumName _root() { return _root; }
    public void set_root(DebugEnumName _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private ITestEnum1 one;
    private List<ITestEnum2> arrayOfInts;
    private TestSubtype testType;
    private DebugEnumName _root;
    private KaitaiStruct.ReadWrite _parent;
}
