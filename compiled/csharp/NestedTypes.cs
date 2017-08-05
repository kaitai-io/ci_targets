// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class NestedTypes : KaitaiStruct
    {
        public static NestedTypes FromFile(string fileName)
        {
            return new NestedTypes(new KaitaiStream(fileName));
        }

        public NestedTypes(KaitaiStream p__io, KaitaiStruct p__parent = null, NestedTypes p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read() {
            _one = new SubtypeA(m_io, this, m_root);
            _two = new SubtypeB(m_io, this, m_root);
        }
        public partial class SubtypeA : KaitaiStruct
        {
            public static SubtypeA FromFile(string fileName)
            {
                return new SubtypeA(new KaitaiStream(fileName));
            }

            public SubtypeA(KaitaiStream p__io, NestedTypes p__parent = null, NestedTypes p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read() {
                _typedAtRoot = new SubtypeB(m_io, this, m_root);
                _typedHere = new SubtypeC(m_io, this, m_root);
            }
            public partial class SubtypeC : KaitaiStruct
            {
                public static SubtypeC FromFile(string fileName)
                {
                    return new SubtypeC(new KaitaiStream(fileName));
                }

                public SubtypeC(KaitaiStream p__io, NestedTypes.SubtypeA p__parent = null, NestedTypes p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read() {
                    _valueC = m_io.ReadS1();
                }
                private sbyte _valueC;
                private NestedTypes m_root;
                private NestedTypes.SubtypeA m_parent;
                public sbyte ValueC { get { return _valueC; } }
                public NestedTypes M_Root { get { return m_root; } }
                public NestedTypes.SubtypeA M_Parent { get { return m_parent; } }
            }
            private SubtypeB _typedAtRoot;
            private SubtypeC _typedHere;
            private NestedTypes m_root;
            private NestedTypes m_parent;
            public SubtypeB TypedAtRoot { get { return _typedAtRoot; } }
            public SubtypeC TypedHere { get { return _typedHere; } }
            public NestedTypes M_Root { get { return m_root; } }
            public NestedTypes M_Parent { get { return m_parent; } }
        }
        public partial class SubtypeB : KaitaiStruct
        {
            public static SubtypeB FromFile(string fileName)
            {
                return new SubtypeB(new KaitaiStream(fileName));
            }

            public SubtypeB(KaitaiStream p__io, KaitaiStruct p__parent = null, NestedTypes p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read() {
                _valueB = m_io.ReadS1();
            }
            private sbyte _valueB;
            private NestedTypes m_root;
            private KaitaiStruct m_parent;
            public sbyte ValueB { get { return _valueB; } }
            public NestedTypes M_Root { get { return m_root; } }
            public KaitaiStruct M_Parent { get { return m_parent; } }
        }
        private SubtypeA _one;
        private SubtypeB _two;
        private NestedTypes m_root;
        private KaitaiStruct m_parent;
        public SubtypeA One { get { return _one; } }
        public SubtypeB Two { get { return _two; } }
        public NestedTypes M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
