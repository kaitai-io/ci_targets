// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class EnumOfValueInst : KaitaiStruct
    {
        public static EnumOfValueInst FromFile(string fileName)
        {
            return new EnumOfValueInst(new KaitaiStream(fileName));
        }

        public enum Animal
        {
            Dog = 4,
            Cat = 7,
            Chicken = 12,
        }

        public EnumOfValueInst(KaitaiStream io, KaitaiStruct parent = null, EnumOfValueInst root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            f_pet3 = false;
            f_pet4 = false;
            _read();
        }
        private void _read() {
            _pet1 = ((Animal) m_io.ReadU4le());
            _pet2 = ((Animal) m_io.ReadU4le());
            }
        private bool f_pet3;
        private Animal _pet3;
        public Animal Pet3
        {
            get
            {
                if (f_pet3)
                    return _pet3;
                _pet3 = (Animal) (((Animal) (Pet1 == Animal.Cat ? 4 : 12)));
                f_pet3 = true;
                return _pet3;
            }
        }
        private bool f_pet4;
        private Animal _pet4;
        public Animal Pet4
        {
            get
            {
                if (f_pet4)
                    return _pet4;
                _pet4 = (Animal) ((Pet1 == Animal.Cat ? Animal.Dog : Animal.Chicken));
                f_pet4 = true;
                return _pet4;
            }
        }
        private Animal _pet1;
        private Animal _pet2;
        private EnumOfValueInst m_root;
        private KaitaiStruct m_parent;
        public Animal Pet1 { get { return _pet1; } }
        public Animal Pet2 { get { return _pet2; } }
        public EnumOfValueInst M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
