// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class EnumImportLiterals : KaitaiStruct
    {
        public static EnumImportLiterals FromFile(string fileName)
        {
            return new EnumImportLiterals(new KaitaiStream(fileName));
        }

        public EnumImportLiterals(KaitaiStream p__io, KaitaiStruct p__parent = null, EnumImportLiterals p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_pet1Eq = false;
            f_pet1ToI = false;
            f_pet2 = false;
            _read();
        }
        private void _read()
        {
        }
        private bool f_pet1Eq;
        private bool _pet1Eq;
        public bool Pet1Eq
        {
            get
            {
                if (f_pet1Eq)
                    return _pet1Eq;
                _pet1Eq = (bool) ((true ? Enum0.Animal.Chicken : Enum0.Animal.Dog) == Enum0.Animal.Chicken);
                f_pet1Eq = true;
                return _pet1Eq;
            }
        }
        private bool f_pet1ToI;
        private int _pet1ToI;
        public int Pet1ToI
        {
            get
            {
                if (f_pet1ToI)
                    return _pet1ToI;
                _pet1ToI = (int) (Enum0.Animal.Cat);
                f_pet1ToI = true;
                return _pet1ToI;
            }
        }
        private bool f_pet2;
        private EnumDeep.Container1.Container2.Animal _pet2;
        public EnumDeep.Container1.Container2.Animal Pet2
        {
            get
            {
                if (f_pet2)
                    return _pet2;
                _pet2 = (EnumDeep.Container1.Container2.Animal) (EnumDeep.Container1.Container2.Animal.Hare);
                f_pet2 = true;
                return _pet2;
            }
        }
        private EnumImportLiterals m_root;
        private KaitaiStruct m_parent;
        public EnumImportLiterals M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
