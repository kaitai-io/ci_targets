// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class EnumToIClassBorder1 : KaitaiStruct
    {
        public static EnumToIClassBorder1 FromFile(string fileName)
        {
            return new EnumToIClassBorder1(new KaitaiStream(fileName));
        }


        public enum Animal
        {
            Dog = 4,
            Cat = 7,
            Chicken = 12,
        }
        public EnumToIClassBorder1(KaitaiStream p__io, KaitaiStruct p__parent = null, EnumToIClassBorder1 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_checker = false;
            f_someDog = false;
            _read();
        }
        private void _read()
        {
            _pet1 = ((Animal) m_io.ReadU4le());
            _pet2 = ((Animal) m_io.ReadU4le());
        }
        private bool f_checker;
        private EnumToIClassBorder2 _checker;
        public EnumToIClassBorder2 Checker
        {
            get
            {
                if (f_checker)
                    return _checker;
                long _pos = m_io.Pos;
                m_io.Seek(0);
                _checker = new EnumToIClassBorder2(M_Root, m_io);
                m_io.Seek(_pos);
                f_checker = true;
                return _checker;
            }
        }
        private bool f_someDog;
        private Animal _someDog;
        public Animal SomeDog
        {
            get
            {
                if (f_someDog)
                    return _someDog;
                _someDog = (Animal) (((Animal) 4));
                f_someDog = true;
                return _someDog;
            }
        }
        private Animal _pet1;
        private Animal _pet2;
        private EnumToIClassBorder1 m_root;
        private KaitaiStruct m_parent;
        public Animal Pet1 { get { return _pet1; } }
        public Animal Pet2 { get { return _pet2; } }
        public EnumToIClassBorder1 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
