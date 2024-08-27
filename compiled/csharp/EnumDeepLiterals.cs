// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class EnumDeepLiterals : KaitaiStruct
    {
        public static EnumDeepLiterals FromFile(string fileName)
        {
            return new EnumDeepLiterals(new KaitaiStream(fileName));
        }

        public EnumDeepLiterals(KaitaiStream p__io, KaitaiStruct p__parent = null, EnumDeepLiterals p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_isPet1Ok = false;
            f_isPet2Ok = false;
            _read();
        }
        private void _read()
        {
            _pet1 = ((Container1.Animal) m_io.ReadU4le());
            _pet2 = ((Container1.Container2.Animal) m_io.ReadU4le());
        }
        public partial class Container1 : KaitaiStruct
        {
            public static Container1 FromFile(string fileName)
            {
                return new Container1(new KaitaiStream(fileName));
            }


            public enum Animal
            {
                Dog = 4,
                Cat = 7,
                Chicken = 12,
            }
            public Container1(KaitaiStream p__io, KaitaiStruct p__parent = null, EnumDeepLiterals p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
            }
            public partial class Container2 : KaitaiStruct
            {
                public static Container2 FromFile(string fileName)
                {
                    return new Container2(new KaitaiStream(fileName));
                }


                public enum Animal
                {
                    Canary = 4,
                    Turtle = 7,
                    Hare = 12,
                }
                public Container2(KaitaiStream p__io, KaitaiStruct p__parent = null, EnumDeepLiterals p__root = null) : base(p__io)
                {
                    m_parent = p__parent;
                    m_root = p__root;
                    _read();
                }
                private void _read()
                {
                }
                private EnumDeepLiterals m_root;
                private KaitaiStruct m_parent;
                public EnumDeepLiterals M_Root { get { return m_root; } }
                public KaitaiStruct M_Parent { get { return m_parent; } }
            }
            private EnumDeepLiterals m_root;
            private KaitaiStruct m_parent;
            public EnumDeepLiterals M_Root { get { return m_root; } }
            public KaitaiStruct M_Parent { get { return m_parent; } }
        }
        private bool f_isPet1Ok;
        private bool _isPet1Ok;
        public bool IsPet1Ok
        {
            get
            {
                if (f_isPet1Ok)
                    return _isPet1Ok;
                f_isPet1Ok = true;
                _isPet1Ok = (bool) (Pet1 == Container1.Animal.Cat);
                return _isPet1Ok;
            }
        }
        private bool f_isPet2Ok;
        private bool _isPet2Ok;
        public bool IsPet2Ok
        {
            get
            {
                if (f_isPet2Ok)
                    return _isPet2Ok;
                f_isPet2Ok = true;
                _isPet2Ok = (bool) (Pet2 == Container1.Container2.Animal.Hare);
                return _isPet2Ok;
            }
        }
        private Container1.Animal _pet1;
        private Container1.Container2.Animal _pet2;
        private EnumDeepLiterals m_root;
        private KaitaiStruct m_parent;
        public Container1.Animal Pet1 { get { return _pet1; } }
        public Container1.Container2.Animal Pet2 { get { return _pet2; } }
        public EnumDeepLiterals M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
