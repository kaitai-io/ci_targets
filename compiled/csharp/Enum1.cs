// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class Enum1 : KaitaiStruct
    {
        public static Enum1 FromFile(string fileName)
        {
            return new Enum1(new KaitaiStream(fileName));
        }

        public Enum1(KaitaiStream p__io, KaitaiStruct p__parent = null, Enum1 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _main = new MainObj(m_io, this, m_root);
        }
        public partial class MainObj : KaitaiStruct
        {
            public static MainObj FromFile(string fileName)
            {
                return new MainObj(new KaitaiStream(fileName));
            }


            public enum Animal
            {
                Dog = 4,
                Cat = 7,
                Chicken = 12,
            }
            public MainObj(KaitaiStream p__io, Enum1 p__parent = null, Enum1 p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _submain = new SubmainObj(m_io, this, m_root);
            }
            public partial class SubmainObj : KaitaiStruct
            {
                public static SubmainObj FromFile(string fileName)
                {
                    return new SubmainObj(new KaitaiStream(fileName));
                }

                public SubmainObj(KaitaiStream p__io, Enum1.MainObj p__parent = null, Enum1 p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                    _pet1 = ((Enum1.MainObj.Animal) m_io.ReadU4le());
                    _pet2 = ((Enum1.MainObj.Animal) m_io.ReadU4le());
                }
                public Animal Pet1 { get { return _pet1; } }
                public Animal Pet2 { get { return _pet2; } }
                public Enum1 M_Root { get { return m_root; } }
                public Enum1.MainObj M_Parent { get { return m_parent; } }
                private Animal _pet1;
                private Animal _pet2;
                private Enum1 m_root;
                private Enum1.MainObj m_parent;
            }
            public SubmainObj Submain { get { return _submain; } }
            public Enum1 M_Root { get { return m_root; } }
            public Enum1 M_Parent { get { return m_parent; } }
            private SubmainObj _submain;
            private Enum1 m_root;
            private Enum1 m_parent;
        }
        public MainObj Main { get { return _main; } }
        public Enum1 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private MainObj _main;
        private Enum1 m_root;
        private KaitaiStruct m_parent;
    }
}
