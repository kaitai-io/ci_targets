// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class MultipleUse : KaitaiStruct
    {
        public static MultipleUse FromFile(string fileName)
        {
            return new MultipleUse(new KaitaiStream(fileName));
        }

        public MultipleUse(KaitaiStream io, KaitaiStruct parent = null, MultipleUse root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _read();
        }
        private void _read() {
            _t1 = new Type1(m_io, this, m_root);
            _t2 = new Type2(m_io, this, m_root);
            }
        public partial class Multi : KaitaiStruct
        {
            public static Multi FromFile(string fileName)
            {
                return new Multi(new KaitaiStream(fileName));
            }

            public Multi(KaitaiStream io, KaitaiStruct parent = null, MultipleUse root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _read();
            }
            private void _read() {
                _value = m_io.ReadS4le();
                }
            private int _value;
            private MultipleUse m_root;
            private KaitaiStruct m_parent;
            public int Value { get { return _value; } }
            public MultipleUse M_Root { get { return m_root; } }
            public KaitaiStruct M_Parent { get { return m_parent; } }
        }
        public partial class Type1 : KaitaiStruct
        {
            public static Type1 FromFile(string fileName)
            {
                return new Type1(new KaitaiStream(fileName));
            }

            public Type1(KaitaiStream io, MultipleUse parent = null, MultipleUse root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _read();
            }
            private void _read() {
                _firstUse = new Multi(m_io, this, m_root);
                }
            private Multi _firstUse;
            private MultipleUse m_root;
            private MultipleUse m_parent;
            public Multi FirstUse { get { return _firstUse; } }
            public MultipleUse M_Root { get { return m_root; } }
            public MultipleUse M_Parent { get { return m_parent; } }
        }
        public partial class Type2 : KaitaiStruct
        {
            public static Type2 FromFile(string fileName)
            {
                return new Type2(new KaitaiStream(fileName));
            }

            public Type2(KaitaiStream io, MultipleUse parent = null, MultipleUse root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                f_secondUse = false;
                _read();
            }
            private void _read() {
                }
            private bool f_secondUse;
            private Multi _secondUse;
            public Multi SecondUse
            {
                get
                {
                    if (f_secondUse)
                        return _secondUse;
                    long _pos = m_io.Pos;
                    m_io.Seek(0);
                    _secondUse = new Multi(m_io, this, m_root);
                    m_io.Seek(_pos);
                    f_secondUse = true;
                    return _secondUse;
                }
            }
            private MultipleUse m_root;
            private MultipleUse m_parent;
            public MultipleUse M_Root { get { return m_root; } }
            public MultipleUse M_Parent { get { return m_parent; } }
        }
        private Type1 _t1;
        private Type2 _t2;
        private MultipleUse m_root;
        private KaitaiStruct m_parent;
        public Type1 T1 { get { return _t1; } }
        public Type2 T2 { get { return _t2; } }
        public MultipleUse M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
