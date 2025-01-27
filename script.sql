PGDMP     "    0    	            {            Shop    15.1    15.1 5    A           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            B           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            C           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            D           1262    32872    Shop    DATABASE     h   CREATE DATABASE "Shop" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE "Shop";
                postgres    false            �            1259    32874    category    TABLE     [   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    32873    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    215            E           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    214            �            1259    32881    image    TABLE     ~   CREATE TABLE public.image (
    id integer NOT NULL,
    file_name character varying(255),
    product_id integer NOT NULL
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    32880    image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.image_id_seq;
       public          postgres    false    217            F           0    0    image_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public          postgres    false    216            �            1259    32919    orders    TABLE       CREATE TABLE public.orders (
    id integer NOT NULL,
    count integer NOT NULL,
    date_time timestamp(6) without time zone,
    number character varying(255),
    price real NOT NULL,
    status smallint,
    person_id integer NOT NULL,
    product_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    32918    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    223            G           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    222            �            1259    32888    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    login character varying(100),
    password character varying(255),
    role character varying(255)
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    32887    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    219            H           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    218            �            1259    32897    product    TABLE     g  CREATE TABLE public.product (
    id integer NOT NULL,
    date_time timestamp(6) without time zone,
    description text NOT NULL,
    price real NOT NULL,
    title text NOT NULL,
    warehouse character varying(255) NOT NULL,
    category_id integer NOT NULL,
    seller text,
    CONSTRAINT product_price_check CHECK ((price >= (1)::double precision))
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    32926    product_cart    TABLE     m   CREATE TABLE public.product_cart (
    id integer NOT NULL,
    person_id integer,
    product_id integer
);
     DROP TABLE public.product_cart;
       public         heap    postgres    false            �            1259    32925    product_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_cart_id_seq;
       public          postgres    false    225            I           0    0    product_cart_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_cart_id_seq OWNED BY public.product_cart.id;
          public          postgres    false    224            �            1259    32896    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    221            J           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    220            �           2604    32877    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    32884    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    32922 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �           2604    32891 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    32900 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    32929    product_cart id    DEFAULT     r   ALTER TABLE ONLY public.product_cart ALTER COLUMN id SET DEFAULT nextval('public.product_cart_id_seq'::regclass);
 >   ALTER TABLE public.product_cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            4          0    32874    category 
   TABLE DATA                 public          postgres    false    215   B9       6          0    32881    image 
   TABLE DATA                 public          postgres    false    217   �9       <          0    32919    orders 
   TABLE DATA                 public          postgres    false    223   ->       8          0    32888    person 
   TABLE DATA                 public          postgres    false    219   �>       :          0    32897    product 
   TABLE DATA                 public          postgres    false    221   �?       >          0    32926    product_cart 
   TABLE DATA                 public          postgres    false    225   J       K           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 3, true);
          public          postgres    false    214            L           0    0    image_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.image_id_seq', 70, true);
          public          postgres    false    216            M           0    0    orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 2, true);
          public          postgres    false    222            N           0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 2, true);
          public          postgres    false    218            O           0    0    product_cart_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.product_cart_id_seq', 4, true);
          public          postgres    false    224            P           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 16, true);
          public          postgres    false    220            �           2606    32879    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    215            �           2606    32886    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    217            �           2606    32924    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    223            �           2606    32895    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    219            �           2606    32931    product_cart product_cart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT product_cart_pkey;
       public            postgres    false    225            �           2606    32905    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    221            �           2606    32907 $   product uk_qka6vxqdy1dprtqnx9trdd47c 
   CONSTRAINT     `   ALTER TABLE ONLY public.product
    ADD CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c UNIQUE (title);
 N   ALTER TABLE ONLY public.product DROP CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c;
       public            postgres    false    221            �           2606    32932 "   orders fk1b0m4muwx1t377w9if3w6wwqn    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn FOREIGN KEY (person_id) REFERENCES public.person(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn;
       public          postgres    false    223    3478    219            �           2606    32913 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    215    3474    221            �           2606    32937 "   orders fk787ibr3guwp6xobrpbofnv7le    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk787ibr3guwp6xobrpbofnv7le FOREIGN KEY (product_id) REFERENCES public.product(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk787ibr3guwp6xobrpbofnv7le;
       public          postgres    false    3480    223    221            �           2606    32908 !   image fkgpextbyee3uk9u6o2381m7ft1    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1 FOREIGN KEY (product_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.image DROP CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1;
       public          postgres    false    217    221    3480            �           2606    32947 (   product_cart fkhpnrxdy3jhujameyod08ilvvw    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw;
       public          postgres    false    221    225    3480            �           2606    32942 (   product_cart fksgnkc1ko2i1o9yr2p63ysq3rn    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn FOREIGN KEY (person_id) REFERENCES public.person(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn;
       public          postgres    false    219    225    3478            4   t   x���v
Q���W((M��L�KN,IM�/�T��L�Q�K�M�Ts�	uV�0�QP�0�bÅ�^�q�I]Ӛ˓4#AF���¾�da2b؈M�^l��taǅ� ��� �LNA      6   W  x���ˊ�G��~
�bÔ��6Ye�!8;ٚ��
�x�C�ӧ�&8[�	$�Nu��������׿�?�y�����W�x��˧v;O//��.燻�iޜ�>�����e�:���Ͽ�~wzI���CeO$>��O E�ڊ���/Ƕ�y�eZ*5��5ϼh֌ܕ����y���)�W?�xsUM%j
��-�C�ШN�!�ù�i;#�!Wf��H`�K��A�*��C;H�B�y���
k$�}@#P��::/-�q�I��j
U���4�^��Y����I��3q43א��G�	y�>�Y��):pHֱĩ�)6'���ǳ���5i�ԥ��n af�e	��	�z��y�<��z9����e��=��r�`p��ػ���r�\9�G�k%�T��qG`�����9N!�fM�0T��$0��3�:��z���yX&0��Oh=����i����d�b*Fµš-�X��g��~�^]����G�-���A���)zR�O-�^n�)��q��H��W�)�Z��Ԧ*�$��dc���'L�I�2��j�I��:�_�.���o���>}~h��}���Ԙ��%H�j�	.�����R�A��*�R/0b\5�kʪ�����g��Wrm봲rK�]4>�"����5�7z2�4�%GM��^*��6Z�����^n�+�&�1h�c7f�\��$Lϳ$9Hn�Kˈq�͞6K���!�I)�g=y�z?�.�i����؎�l���Xpl�>4a &��c;PSI2sh�D[H�f��q.�v����e�Km���������\g��`�R8���:dPBoH����sK���ShH�=0[[D��vK%���H�qQ����ۄ�SS����]���8@�r��@�Ar�p�k��"�y�\ڒR\g������]��>o��
���f�Y����&����<t�M8]L�̈�;NSl��k��4�<bň����,<���y�����J��p���zru��x�l��-�Nf��(�3x�]xJюI���m�����p]����A8Ds,�b�$�-�����Թ��s4?2�Q�+�����������p�j��X�VW�d�O��Ŷ�8G��F~>��� [#�      <   �   x����0Ew��mBҒ�J�����h��J��	�RR����ݓ{�=]��[�K�5N�Y���7�gC@��fv��X�g����g�pc�[¤�e�9�w&�r���q�C�	0;�\P�)���1Qb[q�w�����ɖ��&ZIé��R�RM-X�ZkҮB�����,˾��6x      8   �   x���Oo�0 �;��4!bA4�N��D`XzY����]I]�^��w{y�{��x�2pL ��ᧉd�qj�F������/��B���AD9ځ��Uіw�L�2����e�y�d�N{9 LgD�yz�U��i(n��ʉ�y�%].
�>���,��[����?�_0w��=S���ݾ*4��Lmj�f��IB���g������Ò�s����4u�������0~ +[�      :   
  x��Y�n�}�8o���@]m�O����ʹDiI���~�Ŷ�H��:E�I� ��#�8����/�K�����E����i��̜�g���^�������#s��ߘ�����������J�ܨ=�̣r��i���*?�G���A���癃�ZE�5j��|��|X���������?|�)�>����Û�w|��Cscm�3�?x�����I3��q<M�&�*yG�4��;�{�76r�o��N�L��E�j�8���/HN�g���'rٕF�Y�B�ɋ}\�䶬�K�h˪I<�`y�K���Fn@y��A����$��t���聉g�X(��b<��)���3�=w�N�9�m��G����t$�Z����>D��Ȉ�k!C�Fq���я�I�/�D��4=�S�(vlD�+�6�/e;YI�!Z��o%��K�Zʣ@�g�E���	<��`�<���4pONّ]ĴPx���$Ȉ<��� v��|\�N������'�>�H�B?���YK�AD�D���-)�>Ǯ�؄j**⪐��[a��hu�3��RI��#/��z��
��/0]�-7��u󰱿W]�yw��7T�E�����Jike�d��v66vֶVo���ڸC������i�S�'��z�a�w��خ���ʬ	����]�hx� �^ In�p `�J�ye}�u�x@�8�)�#���p���W���X�p)I�[Z28�T&��=J>3d1�q	�qe� ��C=N�tq����E*P�&ă�~���O��!��l�JhP���k/id�����4L��4B�Q#R(O�HH5�su������>E��0�g$-�来w�2���4�D�c����?�Uܶ�	P�yP�T����a@����ⶣ�x������y���EiN�&�QC%�%E��}����јm1����1đ�s�f4�&B���ބ�)����uᄈ~�Є����t�#b�a �����Մ0,�I:�Q��e}�:�t��m*�ϖ�� ��ʑ�����<r�yP�{�+��<�m�l�Y-�n�߹E�/��ƙ�H]R��ͯQl�4��W�(�Y��]:F�d�#�c  �g0a��-������B	N4�/��2�S:S�E|Ȕ�5ɚ#e����"+Sƌ�YR�)'yn#�S��z2������gY!�vaʾ�,�1!:��A1�D"�VDM
;�!�X�q?����j��n��F�	IܵA5���8w���Í���50�-��	�Ii��\zl�T��~��vy��SR̳�{��^e���>��͍�@�M��z�3b���c�+"�/2Q�ޔ&��JO���]À�RM�[��E�us����:Y���l=�{���.�sϐ��/�2K��.�T�qD'�|ʀ
��S��A��u"C��B��5����	@���e�L7�G���A�1�x��s4Wt��K���M�ۜ'�;;[뫥���u%�R�4O`mZs�v�SI]F�j��^�\����\/��"ᜑ>���*g!b�NZ��I�H���MI��3���iLU@r/Uh�b��côI���X��MUf��tM��gH���H��_��9�΂���m�ίq��9f�Y�wYHY��}�'���T�ġ���3��T`�X����ԅ)K�Z�Dlq^�3f��,_$g,+��%��^�_/-fC�fP�Z�(����D��Q�%��Z��N�֮m󦽹2
�y��P1��գs���r���q�����j�5O9�l���C')ܡ7^ؔj�4������E�C�~�L�g�s7P�m%`/g��x�:ڰt�>KF>θ��&�Eh�>8,��Uso��Ay�ɯ@H[s��)�n�nn�����|#�x
��-�E�"a��gBnጦ����Qd3��Uh9�INQ�e��"�"&Zqa�t�L�b��z�"[u�=:���C��ok^�����X���H��5U�Os,���ͳ4a#���k]�� �O�ccWo뮔ҕd6x'�{P�W6�Q�����f���mDE��<��+^5�Tk��Rɖ={�ť���K%Y=�z�ڄNG���D�o�.�(Q�hb,�� I�=+U�.ө/.-�fl
�Mۿ� ������XZρrY���Y�(�`6ڱ�� ��7
�P6UW���
DU���hy�Z,�������ό�\ּb��V|9H�L�U=-�����.	u�r�6
Kچ5Ӗ<�F:�sn�n�����y���Y�������5��^�|tT�������jm�T��a�r
#&.�S�l<�&>=1����T"��8�;s��и�)'�zgP� �ٌ��d9N�H5����p߱qJe�v� Q�)3{SK�)G;m���Ԏ����ճ~��Z�ʺYh	a�� /d)�[d�o�:��D+���{K�F3c����O8﨔�o���kb����|&�U�?H&n�h\)/F�xcS��}�4�}gɅ�0� �C	��
X����Q,p�n.�,��%���(D;�A��M�3��@  �-�x���0��45�u��{b,)vt�7�6X�Y�)�O��6����ҿ *      >   
   x���         