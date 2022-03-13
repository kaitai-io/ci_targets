// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class TypeTernary2ndFalsy : KaitaiStruct
    {
        public static TypeTernary2ndFalsy FromFile(string fileName)
        {
            return new TypeTernary2ndFalsy(new KaitaiStream(fileName));
        }

        public TypeTernary2ndFalsy(KaitaiStream p__io, KaitaiStruct p__parent = null, TypeTernary2ndFalsy p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_nullUt = false;
            f_vFloatZero = false;
            f_t = false;
            f_vIntNegZero = false;
            f_vIntZero = false;
            f_vFalse = false;
            f_vStrEmpty = false;
            f_vIntArrayEmpty = false;
            f_vNullUt = false;
            f_vFloatNegZero = false;
            f_vStrWZero = false;
            _read();
        }
        private void _read()
        {
            _intTruthy = m_io.ReadU1();
            _ut = new Foo(m_io, this, m_root);
            _intArray = new List<byte>((int) (2));
            for (var i = 0; i < 2; i++)
            {
                _intArray.Add(m_io.ReadU1());
            }
            _intArrayEmpty = new List<byte>((int) (0));
            for (var i = 0; i < 0; i++)
            {
                _intArrayEmpty.Add(m_io.ReadU1());
            }
        }
        public partial class Foo : KaitaiStruct
        {
            public static Foo FromFile(string fileName)
            {
                return new Foo(new KaitaiStream(fileName));
            }

            public Foo(KaitaiStream p__io, TypeTernary2ndFalsy p__parent = null, TypeTernary2ndFalsy p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _m = m_io.ReadU1();
            }
            private byte _m;
            private TypeTernary2ndFalsy m_root;
            private TypeTernary2ndFalsy m_parent;
            public byte M { get { return _m; } }
            public TypeTernary2ndFalsy M_Root { get { return m_root; } }
            public TypeTernary2ndFalsy M_Parent { get { return m_parent; } }
        }
        private bool f_nullUt;
        private Foo _nullUt;
        public Foo NullUt
        {
            get
            {
                if (f_nullUt)
                    return _nullUt;
                if (false) {
                    _nullUt = (Foo) (Ut);
                }
                f_nullUt = true;
                return _nullUt;
            }
        }
        private bool f_vFloatZero;
        private double _vFloatZero;
        public double VFloatZero
        {
            get
            {
                if (f_vFloatZero)
                    return _vFloatZero;
                _vFloatZero = (double) ((T ? 0.0 : 3.14));
                f_vFloatZero = true;
                return _vFloatZero;
            }
        }
        private bool f_t;
        private bool _t;
        public bool T
        {
            get
            {
                if (f_t)
                    return _t;
                _t = (bool) (true);
                f_t = true;
                return _t;
            }
        }
        private bool f_vIntNegZero;
        private int _vIntNegZero;
        public int VIntNegZero
        {
            get
            {
                if (f_vIntNegZero)
                    return _vIntNegZero;
                _vIntNegZero = (int) ((T ? 0 : -20));
                f_vIntNegZero = true;
                return _vIntNegZero;
            }
        }
        private bool f_vIntZero;
        private sbyte _vIntZero;
        public sbyte VIntZero
        {
            get
            {
                if (f_vIntZero)
                    return _vIntZero;
                _vIntZero = (sbyte) ((T ? 0 : 10));
                f_vIntZero = true;
                return _vIntZero;
            }
        }
        private bool f_vFalse;
        private bool _vFalse;
        public bool VFalse
        {
            get
            {
                if (f_vFalse)
                    return _vFalse;
                _vFalse = (bool) ((T ? false : true));
                f_vFalse = true;
                return _vFalse;
            }
        }
        private bool f_vStrEmpty;
        private string _vStrEmpty;
        public string VStrEmpty
        {
            get
            {
                if (f_vStrEmpty)
                    return _vStrEmpty;
                _vStrEmpty = (string) ((T ? "" : "kaitai"));
                f_vStrEmpty = true;
                return _vStrEmpty;
            }
        }
        private bool f_vIntArrayEmpty;
        private List<byte> _vIntArrayEmpty;
        public List<byte> VIntArrayEmpty
        {
            get
            {
                if (f_vIntArrayEmpty)
                    return _vIntArrayEmpty;
                _vIntArrayEmpty = (List<byte>) ((T ? IntArrayEmpty : IntArray));
                f_vIntArrayEmpty = true;
                return _vIntArrayEmpty;
            }
        }
        private bool f_vNullUt;
        private Foo _vNullUt;
        public Foo VNullUt
        {
            get
            {
                if (f_vNullUt)
                    return _vNullUt;
                _vNullUt = (Foo) ((T ? NullUt : Ut));
                f_vNullUt = true;
                return _vNullUt;
            }
        }
        private bool f_vFloatNegZero;
        private double _vFloatNegZero;
        public double VFloatNegZero
        {
            get
            {
                if (f_vFloatNegZero)
                    return _vFloatNegZero;
                _vFloatNegZero = (double) ((T ? -0.0 : -2.72));
                f_vFloatNegZero = true;
                return _vFloatNegZero;
            }
        }
        private bool f_vStrWZero;
        private string _vStrWZero;
        public string VStrWZero
        {
            get
            {
                if (f_vStrWZero)
                    return _vStrWZero;
                _vStrWZero = (string) ((T ? "0" : "30"));
                f_vStrWZero = true;
                return _vStrWZero;
            }
        }
        private byte _intTruthy;
        private Foo _ut;
        private List<byte> _intArray;
        private List<byte> _intArrayEmpty;
        private TypeTernary2ndFalsy m_root;
        private KaitaiStruct m_parent;
        public byte IntTruthy { get { return _intTruthy; } }
        public Foo Ut { get { return _ut; } }
        public List<byte> IntArray { get { return _intArray; } }
        public List<byte> IntArrayEmpty { get { return _intArrayEmpty; } }
        public TypeTernary2ndFalsy M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
